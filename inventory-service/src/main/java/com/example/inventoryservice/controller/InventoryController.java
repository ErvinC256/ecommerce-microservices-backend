package com.example.inventoryservice.controller;

import com.example.inventoryservice.dto.InventoryDto;
import com.example.inventoryservice.service.InventoryService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/inventories")
public class InventoryController {

    private final InventoryService inventoryService;

    public InventoryController(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }

    @GetMapping("")
    public List<InventoryDto> getInventories(@RequestParam List<Long> productIds) {

        return inventoryService.getInventories(productIds);
    }

    @PutMapping("/{id}")
    public void updateInventory(@PathVariable Long id,
                                @RequestParam Long incrementStockCount) {

        inventoryService.updateInventory(id, incrementStockCount);
    }

    //test
    @GetMapping("/test")
    public String hello() {

        return "Hello from InventoryController!";
    }
}
