package com.example.orderservice.listener;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.dto.CartItemDto;
import com.example.orderservice.message.InitOrderDetails;
import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderItem;
import com.example.orderservice.publisher.OrderEventsPublisher;
import com.example.orderservice.repository.OrderItemRepository;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDateTime;
import java.util.List;

@Component
public class PaymentEventsListener {

    private final OrderRepository orderRepository;
    private final OrderItemRepository orderItemRepository;
    private final RestTemplate restTemplate;
    private final OrderEventsPublisher orderEventsPublisher;

    public PaymentEventsListener(OrderRepository orderRepository, OrderItemRepository orderItemRepository, RestTemplate restTemplate, OrderEventsPublisher orderEventsPublisher) {
        this.orderRepository = orderRepository;
        this.orderItemRepository = orderItemRepository;
        this.restTemplate = restTemplate;
        this.orderEventsPublisher = orderEventsPublisher;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.CREATE_ORDER_QUEUE)
    public void handlePaymentCompletedEvent(InitOrderDetails initOrderDetails) {

        Long userId = initOrderDetails.getUserId();

        Order order = new Order();
        order.setOrderNumber(initOrderDetails.getOrderNumber());
        order.setPaymentNumber(initOrderDetails.getPaymentNumber());
        order.setUserId(userId);
        order.setTotalAmount(initOrderDetails.getAmount());
        order.setDateCreated(LocalDateTime.now());
        order.setStatus(Order.Status.PLACED);

        List<Long> cartItemIds = initOrderDetails.getCartItemIds();

        // Build cart item ids string
        StringBuilder cartItemIdsString = new StringBuilder();
        for (int i = 0; i < cartItemIds.size(); i++) {
            cartItemIdsString.append(cartItemIds.get(i));
            if (i < cartItemIds.size() - 1) {
                cartItemIdsString.append(",");
            }
        }

        String cartServiceUrl = String.format("http://cart-service/carts/%s/cart-items?cartItemIds=%s", initOrderDetails.getUserId(), cartItemIdsString);
        ResponseEntity<List<CartItemDto>> cartItemResponse = restTemplate.exchange(cartServiceUrl, HttpMethod.GET, null, new ParameterizedTypeReference<List<CartItemDto>>() {});
        List<CartItemDto> cartItemDtos = cartItemResponse.getBody();

        for (CartItemDto cartItemDto : cartItemDtos) {

            //create order items
            OrderItem orderItem = new OrderItem();
            orderItem.setQuantityPurchased(cartItemDto.getQuantity());
            orderItem.setProductId(cartItemDto.getProductId());
            orderItem.setOrder(order);

            order.getOrderItems().add(orderItem);
        }
        orderRepository.save(order);

        //event chaining
        orderEventsPublisher.publishOrderCreatedEventForCart(userId, cartItemIds);
        orderEventsPublisher.publishOrderCreatedEventForInventory(cartItemDtos);
    }
}