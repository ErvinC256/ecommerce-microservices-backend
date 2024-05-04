package com.example.orderservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    //with inventory service (acting as listener)
    public static final String INVENTORY_SERVICE_EXCHANGE = "x.inventory-service-exchange";
    public static final String PLACE_ORDER_QUEUE = "q.place-order";
    public static final String ROUTING_KEY_PLACE_ORDER = "place-order";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    //with inventory service
    @Bean
    public Queue placeOrderQueue() {
        return new Queue(PLACE_ORDER_QUEUE);
    }

    @Bean
    public Binding placeOrderQueueBinding() {
        return BindingBuilder.bind(placeOrderQueue()).to(new DirectExchange(INVENTORY_SERVICE_EXCHANGE)).with(ROUTING_KEY_PLACE_ORDER);
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


