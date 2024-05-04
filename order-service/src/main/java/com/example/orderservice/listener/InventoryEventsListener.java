package com.example.orderservice.listener;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.message.PlaceOrderDetails;
import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderItem;
import com.example.orderservice.repository.OrderItemRepository;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Component
public class InventoryEventsListener {

    private final OrderRepository orderRepository;
    private final OrderItemRepository orderItemRepository;

    public InventoryEventsListener(OrderRepository orderRepository, OrderItemRepository orderItemRepository) {
        this.orderRepository = orderRepository;
        this.orderItemRepository = orderItemRepository;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.PLACE_ORDER_QUEUE)
    public void handleInventoryUpdatedEvent(PlaceOrderDetails placeOrderDetails) {

        Optional<Order> optionalOrder = orderRepository.findById(placeOrderDetails.getOrderId());

        if (!optionalOrder.isPresent()) {
            throw new IllegalArgumentException();
        }

        Order order = optionalOrder.get();
        order.setPaymentNumber(placeOrderDetails.getPaymentNumber());
        order.setStatus(Order.Status.PLACED);

        List<OrderItem> orderItems = order.getOrderItems();
        orderRepository.save(order);
    }
}