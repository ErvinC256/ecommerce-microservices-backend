package com.example.inventoryservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    public static final String ORDER_SERVICE_EXCHANGE = "x.order-service-exchange";
    public static final String REDUCE_INVENTORIES_QUEUE = "q.reduce-inventories";
    public static final String ROUTING_KEY_REDUCE_INVENTORIES = "reduce-inventories";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    @Bean
    public Queue reduceInventoriesQueue() {
        return new Queue(REDUCE_INVENTORIES_QUEUE);
    }

    @Bean
    public Binding reduceInventoriesQueueBinding() {
        return BindingBuilder.bind(reduceInventoriesQueue()).to(new DirectExchange(ORDER_SERVICE_EXCHANGE)).with(ROUTING_KEY_REDUCE_INVENTORIES);
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


