package com.example.cartservice.controller;

import com.example.cartservice.dto.CartDto;
import com.example.cartservice.dto.CartItemDto;
import com.example.cartservice.model.CartItem;
import com.example.cartservice.service.CartService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/carts")
public class CartController {

    private final CartService cartService;

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/{userId}")
    public CartDto getCart(@PathVariable Long userId) {
        return cartService.getCart(userId);
    }

    //cart-items
    @GetMapping("/{userId}/cart-items/{cartItemId}")
    public CartItemDto getCartItem(@PathVariable Long userId, @PathVariable Long cartItemId) {
        return cartService.getCartItem(userId, cartItemId);
    }

    @PostMapping("/{userId}/cart-items")
    public ResponseEntity<List<Long>> addCartItems(@PathVariable Long userId,
                                                    @RequestBody Map<Long, Long> productQuantityMap) {

        List<Long> cartItemIds = cartService.addCartItems(userId, productQuantityMap);

        return new ResponseEntity<>(cartItemIds, HttpStatus.CREATED);
    }

    @PutMapping("/{userId}/cart-items/{cartItemId}")
    public void updateCartItem(@PathVariable Long userId,
                               @PathVariable Long cartItemId,
                               @RequestParam Long newQuantity) {
        cartService.updateCartItem(userId, cartItemId, newQuantity);
    }

    @DeleteMapping("/{userId}/cart-items/{cartItemId}")
    public void removeCartItem(@PathVariable Long userId,
                                @PathVariable Long cartItemId) {
        cartService.removeCartItem(userId, cartItemId);

    }

    @DeleteMapping("/{userId}/cart-items/all")
    public void deleteAllCartItems(@PathVariable Long userId) {

        cartService.deleteAllCartItems(userId);
    }

    @GetMapping("/{userId}/cart-items/count")
    public Long countCartItems(@PathVariable Long userId) {

        return cartService.countCartItems(userId);
    }

    @GetMapping("/{userId}/cart-items/calculate-amount")
    public BigDecimal calculateSelectedCartItemsAmount(@PathVariable Long userId,
                                                 @RequestParam List<Long> selectedCartItemIds) {
        return cartService.calculateSelectedCartItemsAmount(userId, selectedCartItemIds);
    }

    //test
    @GetMapping("/test")
    public String hello() {

        return "Hello from CartController!";
    }
}
