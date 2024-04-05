package com.example.orderservice.publisher;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.message.RemoveCartItemsLog;
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

        RemoveCartItemsLog removeCartItemsLog = new RemoveCartItemsLog();
        removeCartItemsLog.setUserId(userId);
        removeCartItemsLog.setCartItemIds(cartItemIds);
        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REMOVE_CART_ITEMS, removeCartItemsLog);

        System.out.println(removeCartItemsLog);
    }

    public void publishOrderPlacedEventForInventory(List<OrderItem> orderItems) {

        Map<Long, Long> productQuantityMap = new HashMap<>();

        orderItems.forEach(orderItem -> {
            // minus sign
            productQuantityMap.put(orderItem.getProductId(), -orderItem.getQuantityPurchased());
        });

        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REDUCE_INVENTORY_STOCK, productQuantityMap);
    }
}
