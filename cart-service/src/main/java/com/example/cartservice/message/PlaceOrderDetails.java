package com.example.cartservice.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//involved in payment, cart, inventory, order
public class PlaceOrderDetails implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long orderId;
    private String paymentNumber;
    private Long userId;
    private List<Long> cartItemIds = new ArrayList<>();
    private Map<Long, Long> productQuantityMap = new HashMap<>();

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public String getPaymentNumber() {
        return paymentNumber;
    }

    public void setPaymentNumber(String paymentNumber) {
        this.paymentNumber = paymentNumber;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public List<Long> getCartItemIds() {
        return cartItemIds;
    }

    public void setCartItemIds(List<Long> cartItemIds) {
        this.cartItemIds = cartItemIds;
    }

    public Map<Long, Long> getProductQuantityMap() {
        return productQuantityMap;
    }

    public void setProductQuantityMap(Map<Long, Long> productQuantityMap) {
        this.productQuantityMap = productQuantityMap;
    }
}

