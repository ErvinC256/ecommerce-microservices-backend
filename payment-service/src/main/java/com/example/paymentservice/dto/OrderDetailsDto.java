package com.example.paymentservice.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//frontend to payment
public class OrderDetailsDto implements Serializable {

    private Long orderId;
    private Long userId;
    private List<Long> cartItemIds = new ArrayList<>();

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
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
}

