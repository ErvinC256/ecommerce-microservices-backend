package com.example.inventoryservice.listener;

import com.example.inventoryservice.config.RabbitMQConfig;
import com.example.inventoryservice.message.ProductQuantitiesLog;
import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Component
public class OrderEventsListener {

    private final InventoryRepository inventoryRepository;

    public OrderEventsListener(InventoryRepository inventoryRepository) {
        this.inventoryRepository = inventoryRepository;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.REDUCE_INVENTORIES_QUEUE)
    public void handleOrderCreatedEvent(ProductQuantitiesLog log) {

        log.getProductQuantities().forEach(productQuantity -> {
            Inventory inventory = inventoryRepository.findByProductId(productQuantity.getProductId());

            Long quantityLeft = inventory.getQuantityInStock();
            quantityLeft -= productQuantity.getPurchasedQuantity();
            inventory.setQuantityInStock(quantityLeft);

            inventory.setLastUpdated(LocalDateTime.now());
            inventoryRepository.save(inventory);
        });
    }
}
