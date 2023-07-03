package com.jaeseong.controller;
import com.jaeseong.dto.*;
import com.jaeseong.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("")
public class ProductsController {


    private final ProductsService productsService;

    private final CustomersService customersService;

    private final CommentService commentService;

    private final HeartlistService heartlistService;


    @GetMapping("/index")
    public String indexForm() {
        return "Products/index";
    }


    @GetMapping("/save")
    public String saveForm() {
        return "Products/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute ProductsDTO productsDTO, ProductLineDTO productLineDTO, MultipartHttpServletRequest request,
                       @RequestParam("file") MultipartFile[] file ) throws Exception{

        String uploadPath = request.getRealPath("/images/uploadFiles");
        String fileOriginName = "";
        String fileMultiName = "";
        for(int i=0; i<file.length; i++) {
            fileOriginName = file[i].getOriginalFilename();
            System.out.println("기존 파일명 : "+fileOriginName);
            SimpleDateFormat formatter = new SimpleDateFormat("YYYYMMDD_HHMMSS_"+i);
            Calendar now = Calendar.getInstance();

            //확장자명
            String extension = fileOriginName.split("\\.")[1];

            //fileOriginName에 날짜+.+확장자명으로 저장시킴.
            fileOriginName = formatter.format(now.getTime())+"."+extension;
            System.out.println("변경된 파일명 : "+fileOriginName);

            File f = new File(uploadPath+"\\"+fileOriginName);
            file[i].transferTo(f);
            if(i==0) { fileMultiName += fileOriginName; }
            else{ fileMultiName += ","+fileOriginName; }
        }
        System.out.println("*"+fileMultiName);
        productLineDTO.setImage(fileMultiName.getBytes());


        int saveResult = productsService.save(productsDTO);
        if (saveResult > 0) {
            return "redirect:/products/paging";
        } else {
            return "Products/save";
        }
    }

    @GetMapping("/")
    public String findAll(Model model, HttpSession session) {
        // 세션에서 CustomerNumber 가져오기
        Integer CustomerNumber = (Integer) session.getAttribute("CustomerNumber");

        // 로직에서 CustomerNumber 활용
        List<CommentDTO> resentCommentList = commentService.resentCommentList();
        List<ProductsDTO> productsDTOList = productsService.findAll();
        List<ProductsDTO> FreeProductsDTOList = productsService.FreeProducts();
        List<ProductsDTO> beginnerProductsDTOList = productsService.beginnerProducts();
        List<ProductsDTO> myProductsList = productsService.myProductsList(CustomerNumber);
        List<ProductsDTO> RecommendProductsDTOList = productsService.RecommendProductsDTOList(CustomerNumber);
        int CustomersNumbers = customersService.CustomersNumbers();

        // Model에 데이터 추가
        model.addAttribute("resentCommentList", resentCommentList);
        model.addAttribute("productsList", productsDTOList);
        model.addAttribute("CustomersNumbers", CustomersNumbers);
        model.addAttribute("FreeProductsDTOList", FreeProductsDTOList);
        model.addAttribute("beginnerProductsDTOList", beginnerProductsDTOList);
        model.addAttribute("myProductsList", myProductsList);
        model.addAttribute("RecommendProductsDTOList", RecommendProductsDTOList);
        return "Products/list";
    }





    @GetMapping("/delete")
    public String delete(@RequestParam("productCode") String productCode) {
        productsService.delete(productCode);
        return "redirect:/products/";
    }

    @GetMapping("/update")
    public String updateForm(@RequestParam("productCode") String productCode, Model model) {
        ProductsDTO productsDTO = productsService.findByProductCode(productCode);
        model.addAttribute("products", productsDTO);
        return "Products/update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute ProductsDTO productsDTO, Model model) {
        productsService.update(productsDTO);
        ProductsDTO dto = productsService.findByProductCode(productsDTO.getProductCode());
        model.addAttribute("products", productsDTO);
        return "redirect:/products?productCode=" + dto.getProductCode();

    }

    @PostMapping("/priceUp")
    @ResponseBody
    public String priceUp(@RequestParam("productCode") String productCode) {
        productsService.priceUp(productCode);

        return "가격이 성공적으로 인상되었습니다.";
    }

    @PostMapping("/priceDown")
    @ResponseBody
    public String priceDown(@RequestParam("productCode") String productCode) {
        productsService.priceDown(productCode);

        return "가격이 성공적으로 인하되었습니다.";
    }

    @PostMapping("/updateOrInsertHeartlist")
    @ResponseBody
    public String updateOrInsertHeartlist(@RequestParam("customerNumber") int customerNumber,
                                          @RequestParam("productCode") String productCode) {
        HeartlistDTO heartlistDTO = heartlistService.findByCustomerAndProduct(customerNumber, productCode);
        if (heartlistDTO != null) {
            // 프로시저 호출 코드 작성
            productsService.updateOrInsertHeartlist(customerNumber, productCode);

            return "이미 좋아요를 눌렀습니다.";
        } else {
            // 프로시저 호출 코드 작성
            productsService.updateOrInsertHeartlist(customerNumber, productCode);
            return "프로시저가 성공적으로 실행되었습니다.";
        }
    }
}