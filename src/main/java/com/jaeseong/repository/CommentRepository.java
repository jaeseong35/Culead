package com.jaeseong.repository;

import com.jaeseong.dto.CommentDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
@RequiredArgsConstructor
public class CommentRepository {

    private final SqlSessionTemplate sql;

    public int save(CommentDTO commentDTO) {
        return sql.insert("comment.save", commentDTO);
    }

    public List<CommentDTO> findAll(String productCode) {
        return sql.selectList("comment.findAll", productCode);
    }

    public void delete(String id) {
        sql.delete("comment.delete", id);
    }

    public List<CommentDTO> findParentComments(String productCode) {
        return sql.selectList("comment.findParentComments", productCode);
    }

    public List<CommentDTO> findChildComments(String productCode) {
        return sql.selectList("comment.findChildComments", productCode);
    }

    public int childCommentsSave(CommentDTO commentDTO) {
        return sql.insert("comment.childCommentsSave", commentDTO);
    }

    public List<CommentDTO> resentCommentList() {
        return sql.selectList("comment.resentCommentList");
    }


    public List<CommentDTO> CommentList(Map<String, Object> pagingParams) {
        return sql.selectList("comment.CommentList", pagingParams);
    }


    public int commentCount() {
        return sql.selectOne("comment.commentCount");
    }


    //별점 평균 구하기
    public double CommentAvgStarNo() {return sql.selectOne("comment.CommentAvgStarNo");
    }
}
