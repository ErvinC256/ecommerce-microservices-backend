package com.example.inventoryservice.controller;

import com.example.inventoryservice.service.InventoryService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/inventories")
public class InventoryController {

    private final InventoryService inventoryService;

    public InventoryController(InventoryService inventoryService) {
        this.inventoryService = inventoryService;
    }

    @PutMapping("/{id}")
    public void updateInventory(@PathVariable Long id,
                                @RequestParam Long stockIncrementOrDecrement) {

        inventoryService.updateInventory(id, stockIncrementOrDecrement);
    }

    //test
    @GetMapping("/test")
    public String hello() {

        return "Hello from InventoryController!";
    }
}
