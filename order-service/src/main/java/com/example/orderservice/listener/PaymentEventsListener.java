package com.example.orderservice.listener;

import com.example.orderservice.config.RabbitMQConfig;
import com.example.orderservice.message.CompleteOrderDetails;
import com.example.orderservice.model.Order;
import com.example.orderservice.model.OrderItem;
import com.example.orderservice.publisher.OrderEventsPublisher;
import com.example.orderservice.repository.OrderItemRepository;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Component
public class PaymentEventsListener {

    private final OrderRepository orderRepository;
    private final OrderItemRepository orderItemRepository;
    private final OrderEventsPublisher orderEventsPublisher;

    public PaymentEventsListener(OrderRepository orderRepository, OrderItemRepository orderItemRepository, OrderEventsPublisher orderEventsPublisher) {
        this.orderRepository = orderRepository;
        this.orderItemRepository = orderItemRepository;
        this.orderEventsPublisher = orderEventsPublisher;
    }

    @Transactional
    @RabbitListener(queues = RabbitMQConfig.CREATE_ORDER_QUEUE)
    public void handlePaymentCompletedEvent(CompleteOrderDetails completeOrderDetails) {

        Optional<Order> optionalOrder = orderRepository.findById(completeOrderDetails.getOrderId());

        if (!optionalOrder.isPresent()) {
            throw new IllegalArgumentException();
        }

        Order order = optionalOrder.get();
        order.setPaymentNumber(completeOrderDetails.getPaymentNumber());
        order.setStatus(Order.Status.PLACED);

        List<OrderItem> orderItems = order.getOrderItems();
        orderRepository.save(order);

        //event chaining
        orderEventsPublisher.publishOrderCreatedEventForCart(completeOrderDetails.getUserId(),
                                                             completeOrderDetails.getCartItemIds());
        orderEventsPublisher.publishOrderCreatedEventForInventory(orderItems);
    }
}