package com.example.paymentservice.publisher;

import com.example.paymentservice.config.RabbitMQConfig;
import com.example.paymentservice.dto.OrderDetailsDto;
import com.example.paymentservice.message.CompleteOrderDetails;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

@Component
public class PaymentEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public PaymentEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishPaymentCompletedEvent(String paypalOrderId, OrderDetailsDto orderDetailsDto) {

        CompleteOrderDetails completeOrderDetails = new CompleteOrderDetails();
        completeOrderDetails.setOrderId(orderDetailsDto.getOrderId());
        completeOrderDetails.setUserId(orderDetailsDto.getUserId());
        completeOrderDetails.setCartItemIds(orderDetailsDto.getCartItemIds());
        completeOrderDetails.setPaymentNumber(paypalOrderId);

        rabbitTemplate.convertAndSend(RabbitMQConfig.PAYMENT_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_CREATE_ORDER, completeOrderDetails);
    }
}