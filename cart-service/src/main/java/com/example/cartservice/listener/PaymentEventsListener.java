package com.example.cartservice.listener;

import com.example.cartservice.config.RabbitMQConfig;
import com.example.cartservice.message.PlaceOrderDetails;
import com.example.cartservice.model.Cart;
import com.example.cartservice.repository.CartItemRepository;
import com.example.cartservice.repository.CartRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Component
public class PaymentEventsListener {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final RabbitTemplate rabbitTemplate;

    public PaymentEventsListener(CartRepository cartRepository, CartItemRepository cartItemRepository, RabbitTemplate rabbitTemplate) {
        this.cartRepository = cartRepository;
        this.cartItemRepository = cartItemRepository;
        this.rabbitTemplate = rabbitTemplate;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.REMOVE_CART_ITEMS_QUEUE)
    public void handlePaymentCompletedEvent(PlaceOrderDetails placeOrderDetails) {

        Cart cart = cartRepository.findByUserId(placeOrderDetails.getUserId());

        cartItemRepository.deleteAllById(placeOrderDetails.getCartItemIds());

        cart.setLastUpdated(LocalDateTime.now());
        cartRepository.save(cart);

        //propagating the same message to inventory service
        rabbitTemplate.convertAndSend(RabbitMQConfig.CART_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REDUCE_INVENTORY_STOCK, placeOrderDetails);
    }
}
