package com.example.orderservice.publisher;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.message.CartItemsLog;
import com.example.orderservice.message.ProductQuantitiesLog;
import com.example.orderservice.model.OrderItem;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

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

        ProductQuantitiesLog productQuantitiesLog = new ProductQuantitiesLog();

        orderItems.forEach(orderItem -> {
            ProductQuantitiesLog.ProductQuantity productQuantity = new ProductQuantitiesLog.ProductQuantity();
            productQuantity.setProductId(orderItem.getProductId());
            productQuantity.setPurchasedQuantity(orderItem.getQuantityPurchased());

            productQuantitiesLog.getProductQuantities().add(productQuantity);
        });

        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REDUCE_INVENTORIES, productQuantitiesLog);
    }
}
