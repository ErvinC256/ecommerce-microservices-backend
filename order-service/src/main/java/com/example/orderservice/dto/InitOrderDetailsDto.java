package com.example.orderservice.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//frontend to order
public class InitOrderDetailsDto {

    private Long userId;
    private BigDecimal amount;
    private Map<Long, Long> productQuantityMap = new HashMap<>();

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

    public Map<Long, Long> getProductQuantityMap() {
        return productQuantityMap;
    }

    public void setProductQuantityMap(Map<Long, Long> productQuantityMap) {
        this.productQuantityMap = productQuantityMap;
    }
}




