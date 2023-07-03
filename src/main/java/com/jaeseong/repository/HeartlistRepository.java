package com.jaeseong.repository;

import com.jaeseong.dto.HeartlistDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class HeartlistRepository {

    private final SqlSessionTemplate sql;

    public HeartlistDTO findByCustomerAndProduct(int customerNumber, String productCode) {
        Map<String, Object> params = new HashMap<>();
        params.put("customerNumber", customerNumber);
        params.put("productCode", productCode);
        return sql.selectOne("Heartlist.findByCustomerAndProduct", params);
    }
}
