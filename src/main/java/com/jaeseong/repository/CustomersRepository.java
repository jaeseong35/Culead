package com.jaeseong.repository;

import com.jaeseong.dto.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class CustomersRepository {

    private final SqlSessionTemplate sql;

    public int save(CustomersDTO customersDTO) {
        return sql.insert("Customers.save", customersDTO);
    }

    public List<CustomersDTO> pagingList(Map<String, Object> pagingParams) {
        return sql.selectList("Customers.pagingList", pagingParams);
    }

    public int customersCount(String keyword, String country) {
        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("country", country);
        return sql.selectOne("Customers.customersCount", params);
    }


    public List<CustomersDTO> findBySalesRepEmployeeNumber(Long salesRepEmployeeNumber) {
        return sql.selectList("Customers.findBySalesRepEmployeeNumber", salesRepEmployeeNumber);
    }

    public void delete(Long salesRepEmployeeNumber) {
        sql.delete("Customers.delete", salesRepEmployeeNumber);
    }

    public List<PaymentDTO> findByCustomerNumberPaymentList(int customerNumber) {
        return sql.selectList("Customers.findByCustomerNumberPaymentList", customerNumber);
    }

    public List<OrdersDTO> findByCustomerNumberOrderList(int customerNumber) {
        return sql.selectList("Customers.findByCustomerNumberOrderList", customerNumber);
    }

    public List<OrderDetailsDTO> findByOrderNumber(int orderNumber) {
        return sql.selectList("Customers.findByOrderNumber", orderNumber);
    }

    public List<CustomersDTO> countryList() {
        return sql.selectList("Customers.countryList");
    }

    public CustomersDTO findByCustomerNumber(int customersNumber) {
        return sql.selectOne("Customers.findByCustomerNumber", customersNumber);
    }

    public CustomersDTO findByCustomerName(String contactFirstName) {
        return sql.selectOne("Customers.findByCustomerName", contactFirstName);
    }

    public CustomersDTO login(CustomersDTO CustomersDTO) {
        return sql.selectOne("Customers.login", CustomersDTO);
    }

    public CustomersDTO findPassword(CustomersDTO customersDTO) {
        return sql.selectOne("Customers.findPassword", customersDTO);
    }
    public int CustomersNumbers() {
        return sql.selectOne("Customers.CustomersNumbers");
    }

    public CustomersDTO findNumber(CustomersDTO customersDTO) {
        return sql.selectOne("Customers.findNumber", customersDTO);
    }
}
