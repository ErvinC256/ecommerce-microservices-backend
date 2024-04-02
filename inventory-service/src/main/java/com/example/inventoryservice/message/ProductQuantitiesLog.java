package com.example.inventoryservice.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//order to inventory
public class ProductQuantitiesLog implements Serializable {
    private static final long serialVersionUID = 1L;
    private List<ProductQuantity> productQuantities = new ArrayList<>();

    public List<ProductQuantity> getProductQuantities() {
        return productQuantities;
    }

    public void setProductQuantities(List<ProductQuantity> productQuantities) {
        this.productQuantities = productQuantities;
    }

    //inner class
    public static class ProductQuantity implements Serializable {
        private Long productId;
        private Long purchasedQuantity;

        public Long getProductId() {
            return productId;
        }

        public void setProductId(Long productId) {
            this.productId = productId;
        }

        public Long getPurchasedQuantity() {
            return purchasedQuantity;
        }

        public void setPurchasedQuantity(Long purchasedQuantity) {
            this.purchasedQuantity = purchasedQuantity;
        }
    }
}
