package com.example.paymentservice.controller;

import com.example.paymentservice.dto.CompletedPaymentDto;
import com.example.paymentservice.dto.OrderDetailsDto;
import com.example.paymentservice.message.CompleteOrderDetails;
import com.example.paymentservice.dto.ProcessedPaymentDto;
import com.example.paymentservice.service.PaypalService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@RestController
@RequestMapping("/payments")
public class PaymentController {

    private final PaypalService paypalService;

    public PaymentController(PaypalService paypalService) {
        this.paypalService = paypalService;
    }

    @PostMapping("/init")
    public ResponseEntity<ProcessedPaymentDto> createPayment(@RequestParam BigDecimal amount) {

        ProcessedPaymentDto processedPaymentDto = paypalService.createPayment(amount);

        return new ResponseEntity<>(processedPaymentDto, HttpStatus.CREATED);
    }

    @PostMapping("/capture")
    public CompletedPaymentDto capturePayment(@RequestParam String paypalOrderId,
                                              @RequestBody OrderDetailsDto orderDetailsDto) {

        return paypalService.capturePayment(paypalOrderId, orderDetailsDto);
    }

    @GetMapping("/test")
    public String test() {
        return "Hello from PaymentController!";
    }
}


