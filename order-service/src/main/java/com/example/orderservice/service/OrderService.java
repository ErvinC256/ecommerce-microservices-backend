package com.example.orderservice.service;

import com.example.orderservice.dto.OrderDto;
import com.example.orderservice.dto.ProductDto;
import com.example.orderservice.mapper.OrderItemDtoMapper;
import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderItem;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final RestTemplate restTemplate;

    public OrderService(OrderRepository orderRepository, RestTemplate restTemplate) {
        this.orderRepository = orderRepository;
        this.restTemplate = restTemplate;
    }

    public OrderDto getOrder(String orderNumber) {

        Order order = orderRepository.findByOrderNumber(orderNumber);
        List<OrderItem> orderItems = order.getOrderItems();

        // Build product ids string
        List<Long> productIds = new ArrayList<>();
        for (OrderItem orderItem : orderItems) {
            productIds.add(orderItem.getProductId());
        }

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
        List<ProductDto> productDtos = productResponse.getBody();

        // Construct response using list of order items, products
        OrderDto orderDto = new OrderDto();

        for (int i = 0; i < orderItems.size(); i++) {
            OrderItem cartItem = orderItems.get(i);
            ProductDto productDto = productDtos.get(i);

            OrderDto.OrderItemDto orderItemDto = OrderItemDtoMapper.INSTANCE.from(cartItem, productDto);

            orderDto.getOrderItemDtos().add(orderItemDto);
        }

        orderDto.setOrderNumber(orderNumber);
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
}
