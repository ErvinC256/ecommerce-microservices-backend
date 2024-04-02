package com.example.orderservice.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

//frontend to order
public class InitOrderDetailsDto {

    private Long userId;
    private BigDecimal amount;
    private List<Long> cartItemIds = new ArrayList<>();

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public List<Long> getCartItemIds() {
        return cartItemIds;
    }

    public void setCartItemIds(List<Long> cartItemIds) {
        this.cartItemIds = cartItemIds;
    }
}




