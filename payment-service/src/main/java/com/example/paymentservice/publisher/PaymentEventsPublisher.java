package com.example.paymentservice.publisher;

import com.example.paymentservice.config.RabbitMQConfig;
import com.example.paymentservice.dto.OrderDetailsDto;
import com.example.paymentservice.message.PlaceOrderDetails;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

@Component
public class PaymentEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public PaymentEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishPaymentCompletedEvent(String paypalOrderId, OrderDetailsDto orderDetailsDto) {

        PlaceOrderDetails placeOrderDetails = new PlaceOrderDetails();
        placeOrderDetails.setOrderId(orderDetailsDto.getOrderId());
        placeOrderDetails.setUserId(orderDetailsDto.getUserId());
        placeOrderDetails.setCartItemIds(orderDetailsDto.getCartItemIds());
        placeOrderDetails.setPaymentNumber(paypalOrderId);
        placeOrderDetails.setProductQuantityMap(orderDetailsDto.getProductQuantityMap());

        rabbitTemplate.convertAndSend(RabbitMQConfig.PAYMENT_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REMOVE_CART_ITEMS, placeOrderDetails);
    }
}