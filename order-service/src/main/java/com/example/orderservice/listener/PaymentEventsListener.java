package com.example.orderservice.listener;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.dto.CartItemDto;
import com.example.orderservice.message.CompleteOrderDetails;
import com.example.orderservice.model.Order;
import com.example.orderservice.publisher.OrderEventsPublisher;
import com.example.orderservice.repository.OrderItemRepository;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Optional;

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
    public void handlePaymentCompletedEvent(CompleteOrderDetails completeOrderDetails) {

        Optional<Order> optionalOrder = orderRepository.findById(completeOrderDetails.getOrderId());

        if (!optionalOrder.isPresent()) {
            throw new IllegalArgumentException();
        }

        Order order = optionalOrder.get();
        order.setPaymentNumber(completeOrderDetails.getPaymentNumber());
        order.setStatus(Order.Status.COMPLETED);

        orderRepository.save(order);

        List<Long> cartItemIds = completeOrderDetails.getCartItemIds();

        // Build cart item ids string
        StringBuilder cartItemIdsString = new StringBuilder();
        for (int i = 0; i < cartItemIds.size(); i++) {
            cartItemIdsString.append(cartItemIds.get(i));
            if (i < cartItemIds.size() - 1) {
                cartItemIdsString.append(",");
            }
        }

        String cartServiceUrl = String.format("http://cart-service/carts/%s/cart-items?cartItemIds=%s", completeOrderDetails.getUserId(), cartItemIdsString);
        ResponseEntity<List<CartItemDto>> cartItemResponse = restTemplate.exchange(cartServiceUrl, HttpMethod.GET, null, new ParameterizedTypeReference<List<CartItemDto>>() {});
        List<CartItemDto> cartItemDtos = cartItemResponse.getBody();

        //event chaining
        orderEventsPublisher.publishOrderCreatedEventForCart(completeOrderDetails.getUserId(),
                                                             cartItemIds);
        orderEventsPublisher.publishOrderCreatedEventForInventory(cartItemDtos);
    }
}