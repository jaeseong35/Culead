package com.jaeseong.controller;


import com.jaeseong.dto.*;
import com.jaeseong.service.CustomersService;
import com.jaeseong.service.ProductsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/customers")
@RequiredArgsConstructor
public class CustomersController {

    private final CustomersService customersService;

    private final ProductsService productsService;


    @GetMapping("/courses")
    public String courses(Model model, HttpSession session) {
        Integer CustomerNumber = (Integer) session.getAttribute("CustomerNumber");

        List<ProductsDTO> myProductsList = productsService.myProductsList(CustomerNumber);


        model.addAttribute("myProductsList", myProductsList);
        return "Customers/courses";
    }

    // /customers?customersNumber=1
    @GetMapping
    public String findBySalesRepEmployeeNumber(@RequestParam("salesRepEmployeeNumber") Long salesRepEmployeeNumber, Model model) {
        List<CustomersDTO> customersEMPList = customersService.findBySalesRepEmployeeNumber(salesRepEmployeeNumber);
        model.addAttribute("customersEMPList", customersEMPList);
        return "Customers/detail";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute CustomersDTO customersDTO, HttpSession session, Model model) {
        boolean loginResult = customersService.login(customersDTO);
        if (loginResult) {
            session.setAttribute("CustomerNumber", customersDTO.getCustomerNumber());
            session.setAttribute("ContactFirstName", customersDTO.getContactFirstName());
            return "redirect:/";
        } else {
            model.addAttribute("errorMessage", "이메일 또는 비밀번호를 확인해주세요.");
            return "Customers/login";
        }
    }
    @PostMapping("/customersNumber-check")
    public @ResponseBody String customersNumberCheck(@RequestParam("customersNumber") int customersNumber) {
        System.out.println("customersNumber =" + customersNumber);
        String checkResult = customersService.customersNumberCheck(customersNumber);
        return checkResult;
    }
   @PostMapping("/findPassword")
    public String findPassword(@ModelAttribute CustomersDTO customersDTO, Model model) {
        boolean findPasswordResult = customersService.findPassword(customersDTO);
        CustomersDTO customers = customersService.findNumber(customersDTO);
        if (findPasswordResult) {
            model.addAttribute("successMessage", "인증요청이 완료되었습니다");
            model.addAttribute("customers", customers);
        } else {
            model.addAttribute("errorMessage", "이름과 전화번호를 확인해주세요.");
        }
        return "Customers/findPassword";
    }
    @PostMapping("/findByCustomerName")
    public @ResponseBody String findByCustomerName(@RequestParam("contactFirstName") String contactFirstName) {
        System.out.println("contactFirstName =" + contactFirstName);
        String checkResult = customersService.findByCustomerName(contactFirstName);
        return checkResult;
    }

    @GetMapping("/findPassword")
    public String findPasswordForm(){
        return "Customers/findPassword";
    }




    @GetMapping("/logout")
    public String logout(HttpSession sess) {
        sess.invalidate();
        return "redirect:/";
    }


    // /customers/paging?page=2
    // 처음 페이지 요청은 1페이지를 보여줌
    @GetMapping("/paging")
    public String search(Model model,
                         @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                         @RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
                         @RequestParam(value = "country", required = false, defaultValue = "") String country) {
        System.out.println("page = " + page + ", keyword = " + keyword);
        // 검색 결과에 해당하는 글 목록
        List<CustomersDTO> pagingList = customersService.pagingList(page, keyword, country);
        List<CustomersDTO> countryList = customersService.countryList();
        System.out.println("pagingList = " + pagingList);
        PageDTO pageDTO = customersService.pagingParam(page, keyword, country);
        model.addAttribute("customersList", pagingList);
        model.addAttribute("countryList", countryList);
        model.addAttribute("paging", pageDTO);
        return "Customers/paging";
    }


    @GetMapping("/save")
    public String saveForm() {
        return "Customers/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute CustomersDTO customersDTO) {
        int saveResult = customersService.save(customersDTO);
        if (saveResult > 0) {
            return "redirect:/customers/paging";
        } else {
            return "Customers/save";
        }
    }


    @GetMapping("/customersPaymentList")
    public String findByCustomerNumberPaymentList(@RequestParam("customerNumber") int customerNumber, Model model) {
        List<PaymentDTO> customersPaymentList = customersService.findByCustomerNumberPaymentList(customerNumber);
        model.addAttribute("customersPaymentList", customersPaymentList);
        return "Customers/customersPaymentList";
    }

    @GetMapping("/orderList")
    public String findByCustomerNumberOrderList(@RequestParam("customerNumber") int customerNumber, Model model) {
        List<OrdersDTO> orderList = customersService.findByCustomerNumberOrderList(customerNumber);
        model.addAttribute("orderList", orderList);
        return "Customers/orderList";
    }

    @GetMapping("/orderDetail")
    public String findByOrderNumber(@RequestParam("orderNumber") int orderNumber, Model model) {
        List<OrderDetailsDTO> orderDetailList = customersService.findByOrderNumber(orderNumber);
        model.addAttribute("orderDetailList", orderDetailList);
        return "Customers/orderDetailList";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("salesRepEmployeeNumber") Long salesRepEmployeeNumber) {
        customersService.delete(salesRepEmployeeNumber);
        return "redirect:/customers/";
    }


}
