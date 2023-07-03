package com.jaeseong.repository;

import com.jaeseong.dto.ProductsDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class ProductsRepository {
    private final SqlSessionTemplate sql;

    public int save(ProductsDTO productsDTO) {
        return sql.insert("Products.save", productsDTO);
    }

    public List<ProductsDTO> findAll() {
        return sql.selectList("Products.findAll");
    }

    public ProductsDTO findByProductCode(String productCode) {
        return sql.selectOne("Products.findByProductCode", productCode);
    }

    public void updateHits(String productCode) {
        sql.update("Products.updateHits", productCode);
    }

    public void delete(String productCode) {
        sql.delete("Products.delete", productCode);
    }

    public void update(ProductsDTO productsDTO) {
        sql.update("Products.update", productsDTO);
    }

    public List<ProductsDTO> pagingList(Map<String, Object> pagingParams) {
        return sql.selectList("Products.pagingList", pagingParams);
    }
    public List<ProductsDTO> pagingListSortedByPrice(Map<String, Object> pagingParams) {
        return sql.selectList("Products.pagingListSortedByPrice", pagingParams);
    }
    public List<ProductsDTO> pagingListSortedByHits(Map<String, Object> pagingParams) {
        return sql.selectList("Products.pagingListSortedByHits", pagingParams);
    }

    public List<ProductsDTO> pagingListSortedByComments(Map<String, Object> pagingParams) {
        return sql.selectList("Products.pagingListSortedByComments", pagingParams);
    }

    public int productsCount(String productName, String productLine, String charge, String discountStatus) {
        Map<String, Object> params = new HashMap<>();
        params.put("productLine", productLine);
        params.put("productName", productName);
        params.put("charge", charge);
        params.put("discountStatus", discountStatus);
        return sql.selectOne("Products.productsCount", params);
    }

    public void priceUp(String productCode) {
        sql.update("Products.priceUp", productCode);
    }


    public void priceDown(String productCode) {
        sql.update("Products.priceDown", productCode);}

    public List<ProductsDTO> productLineList() {
        return sql.selectList("Products.productLineList");
    }


    public void updateOrInsertHeartlist(int customerNumber, String productCode) {
        Map<String, Object> parameterMap = new HashMap<>();
        parameterMap.put("p_customerNumber", customerNumber);
        parameterMap.put("p_productCode", productCode);
        sql.update("Products.updateOrInsertHeartlist", parameterMap);
    }

    public List<ProductsDTO> FreeProducts() {
        return sql.selectList("Products.FreeProducts");

    }

    public List<ProductsDTO> beginnerProducts() {
        return sql.selectList("Products.beginnerProducts");
    }

    public List<ProductsDTO> LoginCustomerProducts(Integer customerNumber) {
        return sql.selectList("Products.LoginCustomerProducts", customerNumber);
    }

    public List<ProductsDTO> RecommendProductsDTOList(Integer customerNumber) {
        return sql.selectList("Products.RecommendProductsDTOList", customerNumber);
    }

    public List<ProductsDTO> productLineCount() {
        return sql.selectList("Products.productLineCount");
    }

    public List<ProductsDTO> skillNameCountList() {
        return sql.selectList("Products.skillNameCountList");
    }

    public List<ProductsDTO> myProductsList(Integer customerNumber) {
        return sql.selectList("Products.myProductsList", customerNumber);
    }
}

