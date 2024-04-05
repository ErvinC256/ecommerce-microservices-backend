package com.example.orderservice.message;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

//order to cart
public class RemoveCartItemsLog implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long UserId;
    private List<Long> cartItemIds = new ArrayList<>();

    public Long getUserId() {
        return UserId;
    }

    public void setUserId(Long userId) {
        UserId = userId;
    }

    public List<Long> getCartItemIds() {
        return cartItemIds;
    }

    public void setCartItemIds(List<Long> cartItemIds) {
        this.cartItemIds = cartItemIds;
    }

    @Override
    public String toString() {
        return "CartItemsLog{" +
                "UserId=" + UserId +
                ", cartItemIds=" + cartItemIds +
                '}';
    }
}
