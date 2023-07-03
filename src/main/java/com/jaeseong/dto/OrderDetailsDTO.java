package com.jaeseong.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class OrderDetailsDTO {
        private int orderNumber;
        private String productCode;
        private int quantityOrdered;
        private int priceEach;
        private int orderLineNumber;

        public OrderDetailsDTO(int orderNumber, String productCode, int quantityOrdered, int priceEach, int orderLineNumber) {
            this.orderNumber = orderNumber;
            this.productCode = productCode;
            this.quantityOrdered = quantityOrdered;
            this.priceEach = priceEach;
            this.orderLineNumber = orderLineNumber;
        }
}
