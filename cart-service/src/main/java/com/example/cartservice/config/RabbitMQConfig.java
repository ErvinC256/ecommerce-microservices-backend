package com.example.cartservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    //with user service
    public static final String USER_SERVICE_EXCHANGE = "x.user-service-exchange";
    public static final String CREATE_CART_QUEUE = "q.create-cart";
    public static final String DELETE_CART_QUEUE = "q.delete-cart";
    public static final String ROUTING_KEY_CREATE_CART = "create-cart";
    public static final String ROUTING_KEY_DELETE_CART = "delete-cart";

    //with order service
    public static final String ORDER_SERVICE_EXCHANGE = "x.order-service-exchange";
    public static final String REMOVE_QUEUE = "q.create-cart";
    public static final String REMOVE_CART_ITEMS_QUEUE = "q.remove-cart-items";
    public static final String ROUTING_KEY_REMOVE_CART_ITEMS = "remove-cart-items";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    //with user service
    @Bean
    public Queue createCartQueue() {
        return new Queue(CREATE_CART_QUEUE);
    }

    @Bean
    public Queue deleteCartQueue() {
        return new Queue(DELETE_CART_QUEUE);
    }

    @Bean
    public Binding createCartQueueBinding() {
        return BindingBuilder.bind(createCartQueue()).to(new DirectExchange(USER_SERVICE_EXCHANGE)).with(ROUTING_KEY_CREATE_CART);
    }

    @Bean
    public Binding deleteCartQueueBinding() {
        return BindingBuilder.bind(deleteCartQueue()).to(new DirectExchange(USER_SERVICE_EXCHANGE)).with(ROUTING_KEY_DELETE_CART);
    }

    //with order service
    @Bean
    public Queue removeCartItemsQueue() {
        return new Queue(REMOVE_CART_ITEMS_QUEUE);
    }

    @Bean
    public Binding removeCartItemsQueueBinding() {
        return BindingBuilder.bind(removeCartItemsQueue()).to(new DirectExchange(ORDER_SERVICE_EXCHANGE)).with(ROUTING_KEY_REMOVE_CART_ITEMS);
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

