package com.example.orderservice.service;

import com.example.orderservice.dto.InitOrderDetailsDto;
import com.example.orderservice.dto.OrderDto;
import com.example.orderservice.dto.ProductDto;
import com.example.orderservice.mapper.OrderItemDtoMapper;
import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderItem;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.*;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final RestTemplate restTemplate;

    public OrderService(OrderRepository orderRepository, RestTemplate restTemplate) {
        this.orderRepository = orderRepository;
        this.restTemplate = restTemplate;
    }

    public OrderDto getOrder(Long id) {

        Optional<Order> optionalOrder= orderRepository.findById(id);

        if (!optionalOrder.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Order not found for id: " + id);
        }

        Order order = optionalOrder.get();
        List<OrderItem> orderItems = order.getOrderItems();

        // extract product ids
        List<Long> productIds = new ArrayList<>();
        for (OrderItem orderItem : orderItems) {
            productIds.add(orderItem.getProductId());
        }

        // for displaying order receipts
        List<ProductDto> productDtos = fetchProductsGivenProductIds(productIds);

        // Construct response using list of order items, products
        OrderDto orderDto = new OrderDto();

        for (int i = 0; i < orderItems.size(); i++) {
            OrderItem cartItem = orderItems.get(i);
            ProductDto productDto = productDtos.get(i);

            OrderDto.OrderItemDto orderItemDto = OrderItemDtoMapper.INSTANCE.from(cartItem, productDto);

            orderDto.getOrderItemDtos().add(orderItemDto);
        }

        orderDto.setOrderNumber(order.getOrderNumber());
        orderDto.setPaymentNumber(order.getPaymentNumber());
        orderDto.setDateCreated(order.getDateCreated());
        orderDto.setTotalAmount(order.getTotalAmount());
        orderDto.setStatus(String.valueOf(order.getStatus()));

        return orderDto;
    }

    public List<Order> getOrdersByStatus(Long userId, boolean placed, boolean delivered, boolean completed) {

        String status;

        if (placed) {
            status = "PLACED";
        } else if (delivered) {
            status = "DELIVERED";
        } else {
            status = "COMPLETED";
        }

        return orderRepository.findByStatus(userId, Order.Status.valueOf(status));
    }

    public Long createOrder(InitOrderDetailsDto initOrderDetailsDto) {

        Order order = new Order();
        order.setOrderNumber(UUID.randomUUID().toString());
        order.setUserId(initOrderDetailsDto.getUserId());
        order.setTotalAmount(initOrderDetailsDto.getAmount());
        order.setDateCreated(LocalDateTime.now());
        order.setStatus(Order.Status.PENDING);

        Map<Long, Long> productQuantityMap = initOrderDetailsDto.getProductQuantityMap();
        productQuantityMap.keySet().forEach(key -> {
            OrderItem orderItem = new OrderItem();
            orderItem.setQuantityPurchased(-productQuantityMap.get(key)); // minus sign
            orderItem.setProductId(key);
            orderItem.setOrder(order);

            order.getOrderItems().add(orderItem);
        });

        // Save the order
        Order savedOrder = orderRepository.save(order);

        // Return the ID of the saved order
        return savedOrder.getId();
    }

    public Long calculateUnitsPurchasedForProduct(Long productId) {
        LocalDateTime currentDateTime = LocalDateTime.now();
        int currentMonth = currentDateTime.getMonthValue();
        int currentYear = currentDateTime.getYear();

        return orderRepository.calculateUnitsPurchased(productId, currentMonth, currentYear);
    }

    private List<ProductDto> fetchProductsGivenProductIds(List<Long> productIds) {

        // Build product ids string
        StringBuilder productIdsString = new StringBuilder();
        for (int i = 0; i < productIds.size(); i++) {
            productIdsString.append(productIds.get(i));
            if (i < productIds.size() - 1) {
                productIdsString.append(",");
            }
        }

        // fetch products
        String productUrl = "http://product-service/products/by-ids?ids=" + productIdsString;
        ResponseEntity<List<ProductDto>> productResponse = restTemplate.exchange(productUrl, HttpMethod.GET, null, new ParameterizedTypeReference<List<ProductDto>>() {});

        return productResponse.getBody();
    }

}
