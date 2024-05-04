package com.example.inventoryservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {
    //with cart service (acting as listener)
    public static final String CART_SERVICE_EXCHANGE = "x.cart-service-exchange";
    public static final String REDUCE_INVENTORY_STOCK_QUEUE = "q.reduce-inventory-stock";
    public static final String ROUTING_KEY_REDUCE_INVENTORY_STOCK = "reduce-inventory-stock";

    //with order service and product service (acting as publisher)
    public static final String INVENTORY_SERVICE_EXCHANGE = "x.inventory-service-exchange";
    public static final String ROUTING_KEY_PLACE_ORDER = "place-order";
    public static final String ROUTING_KEY_SYNC_STOCK = "sync-stock";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    // with cart service
    @Bean
    public Queue reduceInventoryStockQueue() {
        return new Queue(REDUCE_INVENTORY_STOCK_QUEUE);
    }

    @Bean
    public Binding reduceInventoryStockQueueBinding() {
        return BindingBuilder.bind(reduceInventoryStockQueue()).to(new DirectExchange(CART_SERVICE_EXCHANGE)).with(ROUTING_KEY_REDUCE_INVENTORY_STOCK);
    }

    //with order service and product service
    @Bean
    public DirectExchange inventoryServiceExchange() {
        return new DirectExchange(INVENTORY_SERVICE_EXCHANGE);
    }

    @Bean
    public Jackson2JsonMessageConverter converter() {
        return new Jackson2JsonMessageConverter();
    }

    @Bean
    public RabbitTemplate rabbitTemplate(Jackson2JsonMessageConverter converter) {
        RabbitTemplate template = new RabbitTemplate(cachingConnectionFactory);
        template.setMessageConverter(converter);
        return template;
    }

}


