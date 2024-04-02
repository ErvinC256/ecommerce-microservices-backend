package com.example.cartservice.dto;

import java.util.ArrayList;
import java.util.List;

//order to cart
public class ReorderDto {

    private List<ReorderItem> reorderItems = new ArrayList<>();

    public List<ReorderItem> getReorderItems() {
        return reorderItems;
    }

    public void setReorderItems(List<ReorderItem> reorderItems) {
        this.reorderItems = reorderItems;
    }

    public static class ReorderItem {
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
