package com.example.orderservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    //with payment service (acting as listener)
    public static final String PAYMENT_SERVICE_EXCHANGE = "x.payment-service-exchange";
    public static final String CREATE_ORDER_QUEUE = "q.create-order";
    public static final String ROUTING_KEY_CREATE_ORDER = "create-order";

    //with cart service and inventory service (acting as publisher)
    public static final String ORDER_SERVICE_EXCHANGE = "x.order-service-exchange";
    public static final String ROUTING_KEY_REMOVE_CART_ITEMS = "remove-cart-items";
    public static final String ROUTING_KEY_REDUCE_INVENTORY_STOCK = "reduce-inventory-stock";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    //with payment service
    @Bean
    public Queue createOrderQueue() {
        return new Queue(CREATE_ORDER_QUEUE);
    }

    @Bean
    public Binding createOrderQueueBinding() {
        return BindingBuilder.bind(createOrderQueue()).to(new DirectExchange(PAYMENT_SERVICE_EXCHANGE)).with(ROUTING_KEY_CREATE_ORDER);
    }

    //with cart service and inventory service
    @Bean
    public DirectExchange orderServiceExchange() {
        return new DirectExchange(ORDER_SERVICE_EXCHANGE);
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


