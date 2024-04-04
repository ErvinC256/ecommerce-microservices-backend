package com.example.productservice.config;

import org.springframework.amqp.core.*;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitMQConfig {

    public static final String INVENTORY_SERVICE_EXCHANGE = "x.inventory-service-exchange";
    public static final String UPDATE_STOCK_QUEUE = "q.update-stock";
    public static final String ROUTING_KEY_UPDATE_STOCK = "update-stock";

    private final CachingConnectionFactory cachingConnectionFactory;

    public RabbitMQConfig(CachingConnectionFactory cachingConnectionFactory) {
        this.cachingConnectionFactory = cachingConnectionFactory;
    }

    @Bean
    public Queue updateStockQueue() {
        return new Queue(UPDATE_STOCK_QUEUE);
    }

    @Bean
    public Binding updateStockQueueBinding() {
        return BindingBuilder.bind(updateStockQueue()).to(new DirectExchange(INVENTORY_SERVICE_EXCHANGE)).with(ROUTING_KEY_UPDATE_STOCK);
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


