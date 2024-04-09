package com.example.orderservice.controller;

import com.example.orderservice.dto.InitOrderDetailsDto;
import com.example.orderservice.dto.OrderDto;
import com.example.orderservice.model.Order;
import com.example.orderservice.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/{id}")
    public OrderDto getOrder(@PathVariable Long id) {

        return orderService.getOrder(id);
    }

    @GetMapping("/by-status")
    public List<Order> getOrdersByStatus(@RequestParam Long userId,
                                         @RequestParam(defaultValue = "false") boolean placed,
                                         @RequestParam(defaultValue = "false") boolean delivered,
                                         @RequestParam(defaultValue = "false") boolean completed) {

        return orderService.getOrdersByStatus(userId, placed, delivered, completed);
    }

    @PostMapping("/init")
    public ResponseEntity<Long> createOrder(@RequestBody InitOrderDetailsDto initOrderDetailsDto) {

        Long orderId = orderService.createOrder(initOrderDetailsDto);
        return new ResponseEntity<>(orderId, HttpStatus.CREATED);
    }

    @GetMapping("/calculate-units-purchased")
    public Long calculateUnitsPurchasedForProduct(@RequestParam Long productId) {

        return orderService.calculateUnitsPurchasedForProduct(productId);
    }

    @GetMapping("/test")
    public String test() {
        return "Hello from OrderController!";
    }
}
