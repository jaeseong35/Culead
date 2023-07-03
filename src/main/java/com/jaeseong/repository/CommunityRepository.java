package com.jaeseong.repository;

import com.jaeseong.dto.CommunityDTO;
import com.jaeseong.dto.CustomersDTO;
import com.jaeseong.dto.ProductsDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class CommunityRepository {
    private final SqlSessionTemplate sql;


    public CommunityDTO findByCommunityNo(int cmntyNo) {
        return sql.selectOne("community.findByCommunityNo", cmntyNo);
    }

    public List<CommunityDTO> pagingList(Map<String, Object> pagingParams) {
        return sql.selectList("community.pagingList", pagingParams);
    }

    public int communityCount(String keyword, String category) {
        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("category", category);
        return sql.selectOne("community.communityCount", params);
    }

    public int save(CommunityDTO communityDTO) {return sql.insert("community.save", communityDTO);
    }
}
