package com.example.paymentservice.dto;

//payment to frontend
public class CompletedPaymentDto {

    private String paypalStatus;
    private String paypalOrderId;
    private Long orderId;

    public String getPaypalStatus() {
        return paypalStatus;
    }

    public void setPaypalStatus(String paypalStatus) {
        this.paypalStatus = paypalStatus;
    }

    public String getPaypalOrderId() {
        return paypalOrderId;
    }

    public void setPaypalOrderId(String paypalOrderId) {
        this.paypalOrderId = paypalOrderId;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }
}



