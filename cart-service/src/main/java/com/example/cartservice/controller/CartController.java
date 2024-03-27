package com.example.cartservice.controller;

import com.example.cartservice.dto.AddToCartDto;
import com.example.cartservice.dto.CartDto;
import com.example.cartservice.dto.CartItemDto;
import com.example.cartservice.model.CartItem;
import com.example.cartservice.service.CartService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    @GetMapping("/{userId}/cart-items")
    public List<CartItemDto> getCartItems(@PathVariable Long userId,
                                          @RequestParam List<Long> cartItemIds) {
        return cartService.getCartItems(userId, cartItemIds);
    }

    @PostMapping("/{userId}/cart-items")
    public ResponseEntity<CartItem> addCartItem(@PathVariable Long userId,
                                                @RequestBody AddToCartDto addToCartDto) {

        CartItem cartItem = cartService.addCartItem(userId, addToCartDto);

        return new ResponseEntity<>(cartItem, HttpStatus.CREATED);
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

    //test
    @GetMapping("/test")
    public String hello() {

        return "Hello from CartController!";
    }
}
