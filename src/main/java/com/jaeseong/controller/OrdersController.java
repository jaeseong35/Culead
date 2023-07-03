package com.jaeseong.controller;

import com.jaeseong.dto.OrdersDTO;
import com.jaeseong.dto.PageDTO;
import com.jaeseong.service.OrdersService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/orders")
@RequiredArgsConstructor
public class OrdersController {
    private final OrdersService ordersService;

    @GetMapping("/index")
    public String indexForm() {
        return "Orders/index";
    }

    @GetMapping("/paging")
    public String search(Model model,
                         @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                         @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword
    )
    {
        System.out.println("page = " + page + ", keyword = " + keyword);
        // 검색 결과에 해당하는 글 목록
        List<OrdersDTO> pagingList = ordersService.pagingList(page, keyword);
        System.out.println("pagingList = " + pagingList);
        PageDTO pageDTO = ordersService.pagingParam(page, keyword);
        model.addAttribute("ordersList", pagingList);
        model.addAttribute("paging", pageDTO);
        return "Orders/paging";
    }
}
