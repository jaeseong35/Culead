package com.jaeseong.service;

import com.jaeseong.dto.CommunityDTO;
import com.jaeseong.dto.CustomersDTO;
import com.jaeseong.dto.PageDTO;
import com.jaeseong.dto.ProductsDTO;
import com.jaeseong.repository.CommunityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CommunityService {

    private final CommunityRepository communityRepository;



    public CommunityDTO findByCommunityNo(int cmntyNo) {
        return communityRepository.findByCommunityNo(cmntyNo);
    }

    int pageLimit = 10; // 한 페이지당 보여줄 글 갯수
    int blockLimit = 10; // 하단에 보여줄 페이지 번호 갯수

    public List<CommunityDTO> pagingList(int page, String keyword, String category) {
        /*
        1페이지당 보여지는 글 갯수 3
            1page => 0
            2page => 3
            3page => 6
         */
        int pagingStart = (page - 1) * pageLimit;
        Map<String, Object> pagingParams = new HashMap<>();
        pagingParams.put("start", pagingStart);
        pagingParams.put("limit", pageLimit);
        pagingParams.put("keyword", keyword);
        pagingParams.put("category", category);
        List<CommunityDTO> pagingList = communityRepository.pagingList(pagingParams);

        return pagingList;
    }


    public PageDTO pagingParam(int page, String keyword, String category)  {
        // 전체 글 갯수 조회
        int communityCount = communityRepository.communityCount(keyword, category);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) communityCount / pageLimit));
        // 시작 페이지 값 계산(1, 4, 7, 10, ~~~~)
        int startPage = (((int) (Math.ceil((double) page / blockLimit))) - 1) * blockLimit + 1;
        // 끝 페이지 값 계산(3, 6, 9, 12, ~~~~)
        int endPage = startPage + blockLimit - 1;
        if (endPage > maxPage) {
            endPage = maxPage;
        }
        PageDTO pageDTO = new PageDTO();
        pageDTO.setPage(page);
        pageDTO.setMaxPage(maxPage);
        pageDTO.setStartPage(startPage);
        pageDTO.setEndPage(endPage);
        return pageDTO;
    }

    public int save(CommunityDTO communityDTO) {
        return communityRepository.save(communityDTO);
    }
}
