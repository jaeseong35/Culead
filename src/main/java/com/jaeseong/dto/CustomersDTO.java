package com.jaeseong.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class CustomersDTO {
        private int customerNumber;
        private String customerName;
        private String contactLastName;
        private String contactFirstName;
        private String phone;
        private String addressLine1;
        private String addressLine2;
        private String city;
        private String state;
        private String postalCode;
        private String country;
        private Long salesRepEmployeeNumber;
        private int creditLimit;

        private int CustomersNumbers;

        public CustomersDTO() {
        }

        public CustomersDTO(int customerNumber, String customerName, String contactLastName, String contactFirstName,
                            String phone, String addressLine1, String addressLine2, String city, String state, String postalCode,
                            String country, Long salesRepEmployeeNumber, int creditLimit) {
            this.customerNumber = customerNumber;
            this.customerName = customerName;
            this.contactLastName = contactLastName;
            this.contactFirstName = contactFirstName;
            this.phone = phone;
            this.addressLine1 = addressLine1;
            this.addressLine2 = addressLine2;
            this.city = city;
            this.state = state;
            this.postalCode = postalCode;
            this.country = country;
            this.salesRepEmployeeNumber = salesRepEmployeeNumber;
            this.creditLimit = creditLimit;
        }
    }