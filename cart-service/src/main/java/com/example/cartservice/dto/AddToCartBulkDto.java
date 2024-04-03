package com.example.cartservice.dto;

import java.util.ArrayList;
import java.util.List;

//frontend to cart
public class AddToCartBulkDto {

    private List<AddToCartBulkItem> addToCartBulkItems = new ArrayList<>();

    public List<AddToCartBulkItem> getAddToCartBulkItems() {
        return addToCartBulkItems;
    }

    public void setAddToCartBulkItems(List<AddToCartBulkItem> addToCartBulkItems) {
        this.addToCartBulkItems = addToCartBulkItems;
    }

    public static class AddToCartBulkItem {
        private Long productId;
        private Long quantity;

        public Long getProductId() {
            return productId;
        }

        public void setProductId(Long productId) {
            this.productId = productId;
        }

        public Long getQuantity() {
            return quantity;
        }

        public void setQuantity(Long quantity) {
            this.quantity = quantity;
        }
    }
}
