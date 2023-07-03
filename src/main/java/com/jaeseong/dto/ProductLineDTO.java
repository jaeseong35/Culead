package com.jaeseong.dto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class ProductLineDTO {
        private String productLine;
        private String textDescription;
        private String htmlDescription;
        private byte[] image;

        public ProductLineDTO(String productLine, String textDescription, String htmlDescription, byte[] image) {
            this.productLine = productLine;
            this.textDescription = textDescription;
            this.htmlDescription = htmlDescription;
            this.image = image;
        }
}
