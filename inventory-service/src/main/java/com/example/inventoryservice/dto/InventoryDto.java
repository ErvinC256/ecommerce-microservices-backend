package com.example.inventoryservice.dto;

//inventory to frontend
public class InventoryDto {

    private Long quantityInStock;

    public Long getQuantityInStock() {
        return quantityInStock;
    }

    public void setQuantityInStock(Long quantityInStock) {
        this.quantityInStock = quantityInStock;
    }
}
