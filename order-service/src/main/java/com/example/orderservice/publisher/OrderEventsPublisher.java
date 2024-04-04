package com.example.orderservice.publisher;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.message.CartItemsLog;
import com.example.orderservice.model.OrderItem;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class OrderEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public OrderEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishOrderPlacedEventForCart(Long userId, List<Long> cartItemIds) {

        CartItemsLog cartItemsLog = new CartItemsLog();
        cartItemsLog.setUserId(userId);
        cartItemsLog.setCartItemIds(cartItemIds);
        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REMOVE_CART_ITEMS, cartItemsLog);

        System.out.println(cartItemsLog);
    }

    public void publishOrderPlacedEventForInventory(List<OrderItem> orderItems) {

        Map<Long, Long> productQuantities = new HashMap<>();

        orderItems.forEach(orderItem -> {
            // minus sign
            productQuantities.put(orderItem.getProductId(), -orderItem.getQuantityPurchased());
        });

        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REDUCE_INVENTORY_STOCK, productQuantities);
    }
}
