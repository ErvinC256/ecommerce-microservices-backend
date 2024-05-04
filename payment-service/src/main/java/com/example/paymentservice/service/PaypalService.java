package com.example.paymentservice.service;

import com.example.paymentservice.dto.CompletedPaymentDto;
import com.example.paymentservice.dto.OrderDetailsDto;
import com.example.paymentservice.dto.ProcessedPaymentDto;
import com.example.paymentservice.publisher.PaymentEventsPublisher;
import com.paypal.core.PayPalHttpClient;
import com.paypal.http.HttpResponse;
import com.paypal.orders.*;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.NoSuchElementException;

@Service
public class PaypalService {

    private final PayPalHttpClient payPalHttpClient;
    private final PaymentEventsPublisher paymentEventsPublisher;

    public PaypalService(PayPalHttpClient payPalHttpClient, PaymentEventsPublisher paymentEventsPublisher) {
        this.payPalHttpClient = payPalHttpClient;
        this.paymentEventsPublisher = paymentEventsPublisher;
    }

    public ProcessedPaymentDto createPayment(BigDecimal amount) {

        OrderRequest orderRequest = new OrderRequest();
        orderRequest.checkoutPaymentIntent("CAPTURE");
        AmountWithBreakdown amountBreakdown = new AmountWithBreakdown().currencyCode("MYR").value(amount.toString());
        PurchaseUnitRequest purchaseUnitRequest = new PurchaseUnitRequest().amountWithBreakdown(amountBreakdown);
        orderRequest.purchaseUnits(List.of(purchaseUnitRequest));
        ApplicationContext applicationContext = new ApplicationContext();

        orderRequest.applicationContext(applicationContext);
        OrdersCreateRequest ordersCreateRequest = new OrdersCreateRequest().requestBody(orderRequest);

        try {
            HttpResponse<Order> orderHttpResponse = payPalHttpClient.execute(ordersCreateRequest);
            // paypal order class
            Order order = orderHttpResponse.result();

            String redirectUrl = order.links().stream()
                    .filter(link -> "approve".equals(link.rel()))
                    .findFirst()
                    .orElseThrow(NoSuchElementException::new)
                    .href();

            return new ProcessedPaymentDto("success",  order.id(), redirectUrl);
        } catch (IOException e) {

            return new ProcessedPaymentDto("Error");
        }
    }

    public CompletedPaymentDto capturePayment(String paypalOrderId, OrderDetailsDto orderDetailsDto) {
        OrdersCaptureRequest ordersCaptureRequest = new OrdersCaptureRequest(paypalOrderId);

        CompletedPaymentDto completedPaymentDto = new CompletedPaymentDto();

        try {
            HttpResponse<Order> httpResponse = payPalHttpClient.execute(ordersCaptureRequest);
            if (httpResponse.result().status() != null) {
                completedPaymentDto.setPaypalStatus("success");
                completedPaymentDto.setPaypalOrderId(paypalOrderId);
            }
        } catch (IOException e) {

            completedPaymentDto.setPaypalStatus("error");
        }

        completedPaymentDto.setOrderId(orderDetailsDto.getOrderId());

        // publish event
        paymentEventsPublisher.publishPaymentCompletedEvent(paypalOrderId, orderDetailsDto);

        return completedPaymentDto;
    }

}


