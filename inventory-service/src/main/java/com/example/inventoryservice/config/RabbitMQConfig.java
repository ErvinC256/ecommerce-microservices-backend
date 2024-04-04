package com.example.inventoryservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {
    //with order service (acting as listener)
    public static final String ORDER_SERVICE_EXCHANGE = "x.order-service-exchange";
    public static final String REDUCE_INVENTORIES_QUEUE = "q.reduce-inventories";
    public static final String ROUTING_KEY_REDUCE_INVENTORIES = "reduce-inventories";

    //with product service (acting as publisher)
    public static final String INVENTORY_SERVICE_EXCHANGE = "x.inventory-service-exchange";
    public static final String ROUTING_KEY_UPDATE_STOCK = "update-stock";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    // with order service
    @Bean
    public Queue reduceInventoriesQueue() {
        return new Queue(REDUCE_INVENTORIES_QUEUE);
    }

    @Bean
    public Binding reduceInventoriesQueueBinding() {
        return BindingBuilder.bind(reduceInventoriesQueue()).to(new DirectExchange(ORDER_SERVICE_EXCHANGE)).with(ROUTING_KEY_REDUCE_INVENTORIES);
    }

    //with product service
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


