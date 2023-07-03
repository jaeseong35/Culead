package com.jaeseong.controller;

import com.jaeseong.dto.CommentDTO;
import com.jaeseong.dto.PageDTO;
import com.jaeseong.dto.ProductsDTO;
import com.jaeseong.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/comment")
@RequiredArgsConstructor
public class CommentController {
    private final CommentService commentService;

    @GetMapping("/reviews")
    public String comment(Model model,
                          @RequestParam(value = "page", required = false, defaultValue = "1") int page){

        int CommentNumbers = commentService.CommentNumbers();
        double CommentAvgStarNo = commentService.CommentAvgStarNo();
        PageDTO pageDTO;
        pageDTO = commentService.pagingParam(page);
        List<CommentDTO> commentList = commentService.CommentList(page);

        model.addAttribute("paging", pageDTO);
        model.addAttribute("commentList", commentList);
        model.addAttribute("CommentNumbers", CommentNumbers);
        model.addAttribute("CommentAvgStarNo", CommentAvgStarNo);
        return "Comment/reviews";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute CommentDTO commentDTO) {
        int saveResult = commentService.save(commentDTO);
        if (saveResult > 0) {
            return "redirect:/products?productCode=" + commentDTO.getProductCode();
        } else {
            return "redirect:/products?productCode=" + commentDTO.getProductCode();
        }
    }

    @PostMapping("/childCommentsSave")
    public String childCommentsSave(@ModelAttribute CommentDTO commentDTO) {
        int saveResult = commentService.childCommentsSave(commentDTO);
        if (saveResult > 0) {
            return "redirect:/products?productCode=" + commentDTO.getProductCode();
        } else {
            return "redirect:/products?productCode=" + commentDTO.getProductCode();
        }
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") String id, HttpServletRequest request) {
        commentService.delete(id);
        String referer = request.getHeader("referer");
        return "redirect:" + referer;
    }
}
