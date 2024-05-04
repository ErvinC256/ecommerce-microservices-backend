package com.example.inventoryservice.service;

import com.example.inventoryservice.config.RabbitMQConfig;
import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.*;

@Service
public class InventoryService {

    private final InventoryRepository inventoryRepository;
    private final RabbitTemplate rabbitTemplate;

    public InventoryService(InventoryRepository inventoryRepository, RabbitTemplate rabbitTemplate, RabbitTemplate rabbitTemplate1) {
        this.inventoryRepository = inventoryRepository;
        this.rabbitTemplate = rabbitTemplate1;
    }

    public void updateInventory(Long id, Long stockIncrementOrDecrement) {

        Optional<Inventory> inventoryOptional = inventoryRepository.findById(id);

        if (!inventoryOptional.isPresent()) {

            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Inventory not found for id " + id);
        }

        Inventory inventory = inventoryOptional.get();

        Long currentStock = inventory.getQuantityInStock();
        currentStock += stockIncrementOrDecrement;

        inventory.setQuantityInStock(currentStock);
        inventory.setLastUpdated(LocalDateTime.now());

        inventoryRepository.save(inventory);

        Map<Long, Long> productQuantities = new HashMap<>();
        productQuantities.put(id, stockIncrementOrDecrement);

        rabbitTemplate.convertAndSend(RabbitMQConfig.INVENTORY_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_SYNC_STOCK, productQuantities);
    }
}

