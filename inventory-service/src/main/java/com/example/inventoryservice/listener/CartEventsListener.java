package com.example.inventoryservice.listener;

import com.example.inventoryservice.config.RabbitMQConfig;
import com.example.inventoryservice.message.PlaceOrderDetails;
import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Map;

@Component
public class CartEventsListener {

    private final InventoryRepository inventoryRepository;
    private final RabbitTemplate rabbitTemplate;

    public CartEventsListener(InventoryRepository inventoryRepository, RabbitTemplate rabbitTemplate) {
        this.inventoryRepository = inventoryRepository;
        this.rabbitTemplate = rabbitTemplate;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.REDUCE_INVENTORY_STOCK_QUEUE)
    public void handleCartUpdatedEvent(PlaceOrderDetails placeOrderDetails) {

        Map<Long, Long> productQuantities = placeOrderDetails.getProductQuantityMap();
        productQuantities.keySet().forEach(key -> {
            Inventory inventory = inventoryRepository.findByProductId(key);

            Long quantityLeft = inventory.getQuantityInStock();
            quantityLeft += productQuantities.get(key); // minus sign in value
            inventory.setQuantityInStock(quantityLeft);

            inventory.setLastUpdated(LocalDateTime.now());
            inventoryRepository.save(inventory);
        });

        //ask product service to sync
        rabbitTemplate.convertAndSend(RabbitMQConfig.INVENTORY_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_SYNC_STOCK, productQuantities);

        //propagating the same message to order service
        rabbitTemplate.convertAndSend(RabbitMQConfig.INVENTORY_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_PLACE_ORDER, placeOrderDetails);
    }
}
