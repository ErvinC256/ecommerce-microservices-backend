package com.example.inventoryservice.service;

import com.example.inventoryservice.dto.InventoryDto;
import com.example.inventoryservice.model.Inventory;
import com.example.inventoryservice.repository.InventoryRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class InventoryService {

    private final InventoryRepository inventoryRepository;

    public InventoryService(InventoryRepository inventoryRepository) {
        this.inventoryRepository = inventoryRepository;
    }

    public List<InventoryDto> getInventories(List<Long> productIds) {

        List<InventoryDto> inventoryDtos = new ArrayList<>();

        // to preserve order
        productIds.forEach(productId -> {
            Inventory inventory = inventoryRepository.findByProductId(productId);

            InventoryDto inventoryDto = new InventoryDto();
            inventoryDto.setQuantityInStock(inventory.getQuantityInStock());

            inventoryDtos.add(inventoryDto);
        });

        return inventoryDtos;
    }

    public void updateInventory(Long id, Long incrementStockCount) {

        Optional<Inventory> inventoryOptional = inventoryRepository.findById(id);

        if (!inventoryOptional.isPresent()) {

            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Inventory not found for id " + id);
        }

        Inventory inventory = inventoryOptional.get();

        Long currentStock = inventory.getQuantityInStock();
        currentStock += incrementStockCount;

        inventory.setQuantityInStock(currentStock);
        inventory.setLastUpdated(LocalDateTime.now());

        inventoryRepository.save(inventory);
    }
}

