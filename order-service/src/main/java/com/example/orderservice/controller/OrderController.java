package com.example.orderservice.controller;

import com.example.orderservice.dto.OrderDto;
import com.example.orderservice.model.Order;
import com.example.orderservice.service.OrderService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/{orderNumber}")
    public OrderDto getOrder(@PathVariable String orderNumber) {

        return orderService.getOrder(orderNumber);
    }

    @GetMapping("/by-status")
    public List<Order> getOrdersByStatus(@RequestParam Long userId,
                                         @RequestParam(defaultValue = "false") boolean placed,
                                         @RequestParam(defaultValue = "false") boolean delivered,
                                         @RequestParam(defaultValue = "false") boolean completed) {

        return orderService.getOrdersByStatus(userId, placed, delivered, completed);
    }

    @GetMapping("/test")
    public String test() {
        return "Hello from OrderController!";
    }
}
