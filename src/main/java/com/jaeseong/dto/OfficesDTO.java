package com.jaeseong.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class OfficesDTO {
        private String officeCode;
        private String city;
        private String phone;
        private String addressLine1;
        private String addressLine2;
        private String state;
        private String country;
        private String postalCode;
        private String territory;

        public OfficesDTO() {}

        public OfficesDTO(String officeCode, String city, String phone, String addressLine1,
                       String addressLine2, String state, String country, String postalCode, String territory) {
            this.officeCode = officeCode;
            this.city = city;
            this.phone = phone;
            this.addressLine1 = addressLine1;
            this.addressLine2 = addressLine2;
            this.state = state;
            this.country = country;
            this.postalCode = postalCode;
            this.territory = territory;
        }

    }
