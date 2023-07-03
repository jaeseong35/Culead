package com.jaeseong.controller;

import com.jaeseong.dto.*;
import com.jaeseong.service.CommentService;
import com.jaeseong.service.CommunityService;
import com.jaeseong.service.CustomersService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/community")
@RequiredArgsConstructor
public class CommunityController {

    private final CommunityService communityService;



    @GetMapping("/save")
    public String saveForm() {
        return "Community/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute CommunityDTO communityDTO, HttpSession session) {

        int saveResult = communityService.save(communityDTO);
        if (saveResult > 0) {
            return "redirect:/community/";
        } else {
            return "Community/save";
        }
    }




    @GetMapping("/")
    public String findAll(Model model, HttpSession session,
                          @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                          @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
                          @RequestParam(value = "category", required = false, defaultValue = "") String category){


        // 해당 페이지에서 보여줄 글 목록
        List<CommunityDTO> pagingList;
        PageDTO pageDTO;

        pagingList = communityService.pagingList(page, keyword, category);
        pageDTO = communityService.pagingParam(page, keyword, category);

        // 세션에서 CustomerNumber 가져오기
        Integer CustomerNumber = (Integer) session.getAttribute("CustomerNumber");

        // Model에 데이터 추가
        model.addAttribute("communityList", pagingList);
        model.addAttribute("paging", pageDTO);
        return "Community/home";
    }



    @GetMapping
    public String findByCommunityNo(@RequestParam("cmntyNo") int cmntyNo,
                                    Model model,
                                    HttpSession session) {
        // 세션에서 CustomerNumber 가져오기
        Integer CustomerNumber = (Integer) session.getAttribute("CustomerNumber");

        CommunityDTO communityDTO = communityService.findByCommunityNo(cmntyNo);

        //댓글
        /*List<CommentDTO> parentComments = commentService.findParentComments(productCode);*/

        model.addAttribute("communityDTO", communityDTO);
        return "Community/detail";
    }

}
