package com.jaeseong.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaymentDTO {
    private int customerNumber;
    private String checkNumber;
    private Date paymentDate;
    private int amount;

    public PaymentDTO(int customerNumber, String checkNumber, Date paymentDate, int amount) {
        this.customerNumber = customerNumber;
        this.checkNumber = checkNumber;
        this.paymentDate = paymentDate;
        this.amount = amount;
    }
}
