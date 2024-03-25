package com.example.orderservice.publisher;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.dto.CartItemDto;
import com.example.orderservice.message.CartItemsLog;
import com.example.orderservice.message.ProductQuantitiesLog;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class OrderEventsPublisher {

    private final RabbitTemplate rabbitTemplate;

    public OrderEventsPublisher(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void publishOrderCreatedEventForCart(Long userId, List<Long> cartItemIds) {

        CartItemsLog cartItemsLog = new CartItemsLog();
        cartItemsLog.setUserId(userId);
        cartItemsLog.setCartItemIds(cartItemIds);
        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REMOVE_CART_ITEMS, cartItemsLog);
    }

    public void publishOrderCreatedEventForInventory(List<CartItemDto> cartItemDtos) {

        ProductQuantitiesLog productQuantitiesLog = new ProductQuantitiesLog();

        cartItemDtos.forEach(cartItemDto -> {
            ProductQuantitiesLog.ProductQuantity productQuantity = new ProductQuantitiesLog.ProductQuantity();
            productQuantity.setProductId(cartItemDto.getProductId());
            productQuantity.setPurchasedQuantity(cartItemDto.getQuantity());

            productQuantitiesLog.getProductQuantities().add(productQuantity);
        });

        rabbitTemplate.convertAndSend(RabbitMQConfig.ORDER_SERVICE_EXCHANGE, RabbitMQConfig.ROUTING_KEY_REDUCE_INVENTORIES, productQuantitiesLog);
    }
}
