package com.example.paymentservice.dto;

import java.io.Serializable;

//between payment and frontend
public class ProcessedPayment implements Serializable {

    private String paypalStatus;
    private String paypalOrderId;
    private String redirectUrl;

    // for paypal service
    public ProcessedPayment(String paypalStatus) {
        this.paypalStatus = paypalStatus;
    }

    public ProcessedPayment(String paypalStatus, String paypalOrderId, String redirectUrl) {
        this.paypalStatus = paypalStatus;
        this.paypalOrderId = paypalOrderId;
        this.redirectUrl = redirectUrl;
    }

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

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }
}

