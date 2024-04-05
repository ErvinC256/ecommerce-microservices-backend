package com.example.inventoryservice.listener;

import com.example.inventoryservice.config.RabbitMQConfig;
import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.publisher.InventoryEventsPublisher;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Map;

@Component
public class OrderEventsListener {

    private final InventoryRepository inventoryRepository;
    private final InventoryEventsPublisher inventoryEventsPublisher;

    public OrderEventsListener(InventoryRepository inventoryRepository, InventoryEventsPublisher inventoryEventsPublisher) {
        this.inventoryRepository = inventoryRepository;
        this.inventoryEventsPublisher = inventoryEventsPublisher;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.REDUCE_INVENTORY_STOCK_QUEUE)
    public void handleOrderCreatedEvent(Map<Long, Long> productQuantityMap) {

        productQuantityMap.keySet().forEach(key -> {
            Inventory inventory = inventoryRepository.findByProductId(key);

            Long quantityLeft = inventory.getQuantityInStock();
            quantityLeft += productQuantityMap.get(key); // minus sign in value
            inventory.setQuantityInStock(quantityLeft);

            inventory.setLastUpdated(LocalDateTime.now());
            inventoryRepository.save(inventory);
        });

        // event chaining
        inventoryEventsPublisher.publishInventoryUpdatedEvent(productQuantityMap);
    }
}
