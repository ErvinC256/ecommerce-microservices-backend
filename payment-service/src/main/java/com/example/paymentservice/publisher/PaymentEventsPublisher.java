package com.example.paymentservice.publisher;

import com.example.paymentservice.config.RabbitMQConfig;
import com.example.paymentservice.message.InitOrderDetails;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.List;

@Component
public class PaymentEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public PaymentEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishPaymentCompletedEvent(String orderNumber, String paymentNumber, Long userId, BigDecimal amount, List<Long> cartItemIds) {

        InitOrderDetails initOrderDetails = new InitOrderDetails();
        initOrderDetails.setOrderNumber(orderNumber);
        initOrderDetails.setPaymentNumber(paymentNumber);
        initOrderDetails.setUserId(userId);
        initOrderDetails.setAmount(amount);
        initOrderDetails.setCartItemIds(cartItemIds);

        rabbitTemplate.convertAndSend(RabbitMQConfig.PAYMENT_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_CREATE_ORDER, initOrderDetails);
    }
}