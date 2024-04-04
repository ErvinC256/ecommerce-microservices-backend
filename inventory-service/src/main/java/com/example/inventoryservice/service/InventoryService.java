package com.example.inventoryservice.service;

import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.publisher.InventoryEventsPublisher;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.*;

@Service
public class InventoryService {

    private final InventoryRepository inventoryRepository;
    private final InventoryEventsPublisher inventoryEventsPublisher;

    public InventoryService(InventoryRepository inventoryRepository, InventoryEventsPublisher inventoryEventsPublisher) {
        this.inventoryRepository = inventoryRepository;
        this.inventoryEventsPublisher = inventoryEventsPublisher;
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

        inventoryEventsPublisher.publishInventoryUpdatedEvent(productQuantities);
    }
}

