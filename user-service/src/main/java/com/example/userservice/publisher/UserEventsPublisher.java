package com.example.userservice.publisher;

import com.example.userservice.config.RabbitMQConfig;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

@Component
public class UserEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public UserEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishUserCreatedEvent(Long userId) {
        rabbitTemplate.convertAndSend(RabbitMQConfig.USER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_CREATE_CART, userId);
    }

    public void publishUserDeletedEvent(Long userId) {
        rabbitTemplate.convertAndSend(RabbitMQConfig.USER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_DELETE_CART, userId);
    }
}
