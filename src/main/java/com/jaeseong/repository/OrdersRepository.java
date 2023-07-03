package com.jaeseong.repository;

import com.jaeseong.dto.CustomersDTO;
import com.jaeseong.dto.OrdersDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
@RequiredArgsConstructor
public class OrdersRepository {

    private final SqlSessionTemplate sql;

    public List<OrdersDTO> pagingList(Map<String, Object> pagingParams) {
        return sql.selectList("Orders.pagingList", pagingParams);
    }

    public int ordersCount(String keyword) {
        return sql.selectOne("Orders.ordersCount", keyword);
    }
}
