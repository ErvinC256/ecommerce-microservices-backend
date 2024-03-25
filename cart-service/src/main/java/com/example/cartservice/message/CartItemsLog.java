package com.example.cartservice.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//between order and cart
public class CartItemsLog implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long userId;
    private List<Long> cartItemIds = new ArrayList<>();

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
