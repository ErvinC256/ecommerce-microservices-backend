package com.example.orderservice.service;

import com.example.orderservice.model.Order;
import com.example.orderservice.repository.OrderRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order getOrder(String orderNumber) {

        return orderRepository.findByOrderNumber(orderNumber);
    }

    public List<Order> getOrdersByStatus(Long userId, boolean placed, boolean delivered, boolean completed) {

        String status;

        if (placed) {
            status = "PLACED";
        } else if (delivered) {
            status = "DELIVERED";
        } else {
            status = "COMPLETED";
        }

        return orderRepository.findByStatus(userId, Order.Status.valueOf(status));
    }
}
