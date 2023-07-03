package com.jaeseong.service;

import com.jaeseong.dto.CommentDTO;
import com.jaeseong.dto.PageDTO;
import com.jaeseong.repository.CommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



/*
*
* @author 재성
*
* */
@Service
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;

    int pageLimit = 10; // 한 페이지당 보여줄 글 갯수
    int blockLimit = 10; // 하단에 보여줄 페이지 번호 갯수

    public int save(CommentDTO commentDTO) { return commentRepository.save(commentDTO);
    }

    public List<CommentDTO> findAll(String productCode) {
        return commentRepository.findAll(productCode);
    }

    public void delete(String id) {
        commentRepository.delete(id);
    }

    public List<CommentDTO> findParentComments(String productCode) {
        return commentRepository.findParentComments(productCode);
    }

    public List<CommentDTO> findChildComments(String productCode) {
        return commentRepository.findChildComments(productCode);
    }

    public int childCommentsSave(CommentDTO commentDTO) {
        return commentRepository.childCommentsSave(commentDTO);
    }

    public List<CommentDTO> resentCommentList() {
        return commentRepository.resentCommentList();
    }


    public List<CommentDTO> CommentList(int page){
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
        List<CommentDTO> commentList = commentRepository.CommentList(pagingParams);

        return commentList;
    }


    public PageDTO pagingParam(int page) {
        // 전체 글 갯수 조회
        int commentCount = commentRepository.commentCount();
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) commentCount / pageLimit));
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

    public int CommentNumbers() {
        return commentRepository.commentCount();
    }

    public double CommentAvgStarNo() {
        return commentRepository.CommentAvgStarNo();
    }
}
