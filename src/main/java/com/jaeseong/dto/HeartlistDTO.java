package com.jaeseong.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
    public class HeartlistDTO {
        private int customerNumber;

        private String productCode;

        private boolean linked;

    @Override
    public String toString() {
        return "HeartlistDTO{" +
                "customerNumber=" + customerNumber +
                ", productCode='" + productCode + '\'' +
                ", linked=" + linked +
                '}';
    }
}
