package com.example.cartservice.listener;

import com.example.cartservice.config.RabbitMQConfig;
import com.example.cartservice.message.CartItemsLog;
import com.example.cartservice.model.Cart;
import com.example.cartservice.repository.CartItemRepository;
import com.example.cartservice.repository.CartRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Component
public class OrderEventsListener {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;

    public OrderEventsListener(CartRepository cartRepository, CartItemRepository cartItemRepository) {
        this.cartRepository = cartRepository;
        this.cartItemRepository = cartItemRepository;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.REMOVE_CART_ITEMS_QUEUE)
    public void handleOrderCreatedEvent(CartItemsLog cartItemsLog) {

        Cart cart = cartRepository.findByUserId(cartItemsLog.getUserId());

        cartItemRepository.deleteAllById(cartItemsLog.getCartItemIds());

        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);
    }
}
