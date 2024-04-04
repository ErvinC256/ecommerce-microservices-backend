package com.example.inventoryservice.publisher;

import com.example.inventoryservice.config.RabbitMQConfig;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class InventoryEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public InventoryEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishInventoryUpdatedEvent(Map<Long, Long> purchasedProductQuantities) {

        rabbitTemplate.convertAndSend(RabbitMQConfig.INVENTORY_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_UPDATE_STOCK, purchasedProductQuantities);

    }

}

