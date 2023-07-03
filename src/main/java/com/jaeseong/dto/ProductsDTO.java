package com.jaeseong.dto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
public class ProductsDTO {
        private String productCode;
        private String productName;
        private String productLine;
        private String productScale;
        private String productVendor;
        private String productDescription;
        private int quantityInStock;
        private int buyPrice;
        private int MSRP;

        private String textDescription;

        private String htmlDescription;

        private String image;

        private MultipartFile imageFile;

        private int productsHits;

        private int comments;

        private int heartNumber;

        private int customerNumber;

        private int commentsNumber;

        private int linked;

        private String skillName;

        private String charge;

        private int LineCount;

        private int skillNameCount;

        private int discountBuyPrice;

        private String discountStatus;


}
