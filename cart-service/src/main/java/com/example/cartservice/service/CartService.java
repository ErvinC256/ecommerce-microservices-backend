package com.example.cartservice.service;

import com.example.cartservice.dto.*;
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

import java.math.BigDecimal;
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

        // fetch products
        List<ProductDto> productDtos = fetchProductsFromCartItems(cartItems);

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

    public List<Long> addCartItems(Long userId, AddToCartBulkDto addToCartBulkDto) {

        Cart cart = checkIfCartExist(userId);

        addToCartBulkDto.getAddToCartBulkItems().forEach(addToCartBulkItem -> {
            CartItem cartItem = new CartItem();
            cartItem.setProductId(addToCartBulkItem.getProductId());
            cartItem.setQuantity(addToCartBulkItem.getQuantity());
            cartItem.setCart(cart);

            cart.getCartItems().add(cartItem);
        });

        //update existing cart
        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart); //cascade

        //retrieve cart again
        Cart retrievedCart = cartRepository.findByUserId(userId);
        List<Long> cartItemIds = new ArrayList<>();

        retrievedCart.getCartItems().forEach(cartItem -> {
            cartItemIds.add(cartItem.getId());
        });

        Collections.sort(cartItemIds, Collections.reverseOrder());

        //fetch cart item ids created from bulk
        int numReorderItems = addToCartBulkDto.getAddToCartBulkItems().size();
        List<Long> newCartItemIds = new ArrayList<>();

        for (int i = 0; i < numReorderItems; i++) {
            newCartItemIds.add(cartItemIds.get(i));
        }

        return newCartItemIds;
    }

    public void updateCartItem(Long userId, Long cartItemId, Long newQuantity) {

        System.out.println("here!1" + cartItemId);
        Cart cart = checkIfCartExist(userId);

        Optional<CartItem> cartItemOptional = cartItemRepository.findById(cartItemId);

        if (!cartItemOptional.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Cart item not found for id " + cartItemId);
        }

        System.out.println("here!2");
        CartItem cartItem = cartItemOptional.get();
        cartItem.setQuantity(newQuantity);
        cartItemRepository.save(cartItem);

        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);

        System.out.println("here!3");
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

    public BigDecimal calculateSelectedCartItemsAmount(Long userId, List<Long> selectedCartItemIds) {
        checkIfCartExist(userId);

        List<CartItem> selectedCartItems = cartItemRepository.findAllById(selectedCartItemIds);

        // fetch products
        List<ProductDto> productDtos = fetchProductsFromCartItems(selectedCartItems);

        BigDecimal selectedCartItemsAmount = BigDecimal.ZERO;

        for (int i = 0; i < selectedCartItems.size(); i++) {

            Long quantity = selectedCartItems.get(i).getQuantity();
            BigDecimal unitPrice = productDtos.get(i).getProductPrice();

            BigDecimal totalPriceForItem = unitPrice.multiply(BigDecimal.valueOf(quantity));
            selectedCartItemsAmount = selectedCartItemsAmount.add(totalPriceForItem);
        }

        return selectedCartItemsAmount;
    }

    private List<ProductDto> fetchProductsFromCartItems(List<CartItem> cartItems) {

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

        return productResponse.getBody();
    }

    private Cart checkIfCartExist(Long userId) {
        Cart cart = cartRepository.findByUserId(userId);

        if (cart == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Cart not found for user id " + userId);
        }

        return cart;
    }
}

