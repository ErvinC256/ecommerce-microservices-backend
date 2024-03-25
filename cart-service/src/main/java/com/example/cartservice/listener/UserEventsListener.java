package com.example.cartservice.listener;

import com.example.cartservice.config.RabbitMQConfig;
import com.example.cartservice.model.Cart;
import com.example.cartservice.repository.CartRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class UserEventsListener {

    private final CartRepository cartRepository;

    public UserEventsListener(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.CREATE_CART_QUEUE)
    public void handleUserCreatedEvent(Long userId) {

        Cart cart = new Cart();
        cart.setUserId(userId);
        cartRepository.save(cart);
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.DELETE_CART_QUEUE)
    public void handleUserDeletedEvent(Long userId) {

        cartRepository.deleteByUserId(userId);
    }

}
