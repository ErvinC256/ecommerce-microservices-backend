package com.example.productservice.listener;

import com.example.productservice.config.RabbitMQConfig;
import com.example.productservice.model.Product;
import com.example.productservice.repository.ProductRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;

@Component
public class InventoryEventsListener {

    private final ProductRepository productRepository;

    public InventoryEventsListener(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.UPDATE_STOCK_QUEUE)
    public void handleInventoryUpdatedEvent(Map<Long, Long> productQuantityMap) {

        productQuantityMap.keySet().forEach(key -> {
            Optional<Product> productOptional = productRepository.findById(key);

            if (!productOptional.isPresent()) {
                throw new IllegalArgumentException("");
            }

            Product product =productOptional.get();

            Long quantityLeft = product.getQuantityInStock();
            quantityLeft += productQuantityMap.get(key); // minus sign in value
            product.setQuantityInStock(quantityLeft);

            productRepository.save(product);
        });
    }
}

