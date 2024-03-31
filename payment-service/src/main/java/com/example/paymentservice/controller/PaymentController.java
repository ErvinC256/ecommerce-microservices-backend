package com.example.paymentservice.controller;

import com.example.paymentservice.dto.CompletedPaymentDto;
import com.example.paymentservice.dto.ProcessedPaymentDto;
import com.example.paymentservice.service.PaypalService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/payments")
public class PaymentController {

    private final PaypalService paypalService;

    public PaymentController(PaypalService paypalService) {
        this.paypalService = paypalService;
    }

    @PostMapping("/init")
    public ProcessedPaymentDto createPayment(@RequestParam BigDecimal amount) {

        return paypalService.createPayment(amount);
    }

    @PostMapping("/capture")
    public CompletedPaymentDto capturePayment(@RequestParam String paypalOrderId,
                                              @RequestParam Long userId,
                                              @RequestParam BigDecimal amount,
                                              @RequestParam List<Long> cartItemIds) {

        return paypalService.capturePayment(paypalOrderId, userId, amount, cartItemIds);
    }

    @GetMapping("/test")
    public String test() {
        return "Hello from PaymentController!";
    }
}


