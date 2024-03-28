package com.example.cartservice.service;

import com.example.cartservice.dto.AddToCartDto;
import com.example.cartservice.dto.CartDto;
import com.example.cartservice.dto.CartItemDto;
import com.example.cartservice.dto.ProductDto;
import com.example.cartservice.mapper.CartItemDtoMapper;
import com.example.cartservice.model.Cart;
import com.example.cartservice.model.CartItem;
import com.example.cartservice.repository.CartItemRepository;
import com.example.cartservice.repository.CartRepository;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.*;

@Service
public class CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final RestTemplate restTemplate;

    public CartService(CartRepository cartRepository, CartItemRepository cartItemRepository, RestTemplate restTemplate) {
        this.cartRepository = cartRepository;
        this.cartItemRepository = cartItemRepository;
        this.restTemplate = restTemplate;
    }

    public CartDto getCart(Long userId) {

        Cart cart = checkIfCartExist(userId);
        List<CartItem> cartItems = cart.getCartItems();

        // Build product ids string
        List<Long> productIds = new ArrayList<>();
        for (CartItem cartItem : cartItems) {
            productIds.add(cartItem.getProductId());
        }

        StringBuilder productIdsString = new StringBuilder();
        for (int i = 0; i < productIds.size(); i++) {
            productIdsString.append(productIds.get(i));
            if (i < productIds.size() - 1) {
                productIdsString.append(",");
            }
        }

        // fetch products
        String productUrl = "http://product-service/products/by-ids?ids=" + productIdsString;
        ResponseEntity<List<ProductDto>> productResponse = restTemplate.exchange(productUrl, HttpMethod.GET, null, new ParameterizedTypeReference<List<ProductDto>>() {});
        List<ProductDto> productDtos = productResponse.getBody();

        // Construct response using list of cart items, products
        CartDto cartDto = new CartDto();

        for (int i = 0; i < cartItems.size(); i++) {
            CartItem cartItem = cartItems.get(i);
            ProductDto productDto = productDtos.get(i);

            CartDto.CartItemDto cartItemDto = CartItemDtoMapper.INSTANCE.from(cartItem, productDto);

            cartDto.getCartItemDtos().add(cartItemDto);
        }

        cartDto.setLastUpdated(cart.getLastUpdated());

        return cartDto;
    }

    public List<CartItemDto> getCartItems(Long userId, List<Long> cartItemIds) {
        checkIfCartExist(userId);

        List<CartItemDto> cartItemDtos = new ArrayList<>();

        cartItemRepository.findAllById(cartItemIds).forEach(cartItem -> {
            CartItemDto cartItemDto = new CartItemDto();
            cartItemDto.setCartItemId(cartItem.getId());
            cartItemDto.setProductId(cartItem.getProductId());
            cartItemDto.setQuantity(cartItem.getQuantity());

            cartItemDtos.add(cartItemDto);
        });

        return cartItemDtos;
    }

    public CartItem addCartItem(Long userId, AddToCartDto addToCartDto) {

        Cart cart = checkIfCartExist(userId);

        //create a new cart item
        CartItem cartItem = new CartItem();
        cartItem.setCart(cart);
        cartItem.setProductId(addToCartDto.getProductId());
        cartItem.setQuantity(addToCartDto.getQuantity());

        //update existing cart
        cart.getCartItems().add(cartItem);
        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart); //cascade

        return cartItem;
    }

    public void updateCartItem(Long userId, Long cartItemId, Long newQuantity) {

        Cart cart = checkIfCartExist(userId);

        Optional<CartItem> cartItemOptional = cartItemRepository.findById(cartItemId);

        if (cartItemOptional.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Cart item not found for id " + cartItemId);
        }

        CartItem cartItem = cartItemOptional.get();
        cartItem.setQuantity(newQuantity);
        cartItemRepository.save(cartItem);

        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);
    }

    public void removeCartItem(Long userId, Long cartItemId) {

        Cart cart = checkIfCartExist(userId);

        cartItemRepository.deleteById(cartItemId);

        // update existing cart
        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);
    }

    public void deleteAllCartItems(Long userId) {

        Cart cart = checkIfCartExist(userId);

        cartItemRepository.deleteAll();

        //update existing cart
        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);
    }

    public Long countCartItems(Long userId) {

        Cart cart = checkIfCartExist(userId);

        List<CartItem> cartItems = cart.getCartItems();
        Long cartItemsCount = (long) cartItems.size();

        return cartItemsCount;
    }

    private Cart checkIfCartExist(Long userId) {
        Cart cart = cartRepository.findByUserId(userId);

        if (cart == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Cart not found for user id " + userId);
        }

        return cart;
    }
}

