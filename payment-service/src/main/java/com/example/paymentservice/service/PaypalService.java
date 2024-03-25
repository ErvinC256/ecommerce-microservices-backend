package com.example.paymentservice.service;

import com.example.paymentservice.dto.CompletedPayment;
import com.example.paymentservice.dto.ProcessedPayment;
import com.example.paymentservice.publisher.PaymentEventsPublisher;
import com.paypal.core.PayPalHttpClient;
import com.paypal.http.HttpResponse;
import com.paypal.orders.*;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;

@Service
public class PaypalService {

    private final PayPalHttpClient payPalHttpClient;
    private final PaymentEventsPublisher paymentEventsPublisher;

    public PaypalService(PayPalHttpClient payPalHttpClient, PaymentEventsPublisher paymentEventsPublisher) {
        this.payPalHttpClient = payPalHttpClient;
        this.paymentEventsPublisher = paymentEventsPublisher;
    }

    public ProcessedPayment createPayment(BigDecimal amount) {
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

            return new ProcessedPayment("success",  order.id(), redirectUrl);
        } catch (IOException e) {

            return new ProcessedPayment("Error");
        }
    }

    public CompletedPayment capturePayment(String paypalOrderId, Long userId, BigDecimal amount, List<Long> cartItemIds) {
        OrdersCaptureRequest ordersCaptureRequest = new OrdersCaptureRequest(paypalOrderId);

        CompletedPayment completedPayment = new CompletedPayment();

        try {
            HttpResponse<Order> httpResponse = payPalHttpClient.execute(ordersCaptureRequest);
            if (httpResponse.result().status() != null) {
                completedPayment.setPaypalStatus("success");
                completedPayment.setPaypalOrderId(paypalOrderId);
            }
        } catch (IOException e) {

            completedPayment.setPaypalStatus("error");
        }

        String orderNumber = UUID.randomUUID().toString();
        completedPayment.setOrderNumber(orderNumber);

        // publish event
        paymentEventsPublisher.publishPaymentCompletedEvent(orderNumber, paypalOrderId, userId, amount, cartItemIds);

        return completedPayment;
    }

}


