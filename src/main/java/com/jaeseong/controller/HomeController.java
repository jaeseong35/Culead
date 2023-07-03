package com.jaeseong.controller;
        import com.jaeseong.dto.*;
        import com.jaeseong.service.*;
        import lombok.RequiredArgsConstructor;
        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
        import org.springframework.web.bind.annotation.*;
        import org.springframework.web.multipart.MultipartFile;
        import org.springframework.web.multipart.MultipartHttpServletRequest;

        import javax.servlet.http.HttpSession;
        import java.io.File;
        import java.text.SimpleDateFormat;
        import java.util.Calendar;
        import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/products")
public class HomeController {


    private final ProductsService productsService;

    private final CustomersService customersService;

    private final CommentService commentService;

    private final HeartlistService heartlistService;


    @GetMapping("/")
    public String findAll(Model model) {
        List<ProductsDTO> productsDTOList = productsService.findAll();
        model.addAttribute("productsList", productsDTOList);
        return "index";
    }
    @GetMapping("/login")
    public String loginForm(){
        return "Customers/login";
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



    @GetMapping
    public String findByProductCode(@RequestParam("productCode") String productCode,
                                    @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                                    Model model,
                                    HttpSession session) {
        // 세션에서 CustomerNumber 가져오기
        Integer CustomerNumber = (Integer) session.getAttribute("CustomerNumber");
        productsService.updateHits(productCode);
        ProductsDTO productsDTO = productsService.findByProductCode(productCode);
        List<CommentDTO> parentComments = commentService.findParentComments(productCode);
        List<CommentDTO> childComments = commentService.findChildComments(productCode);


        HeartlistDTO heartlistDTO = heartlistService.findByCustomerAndProduct(CustomerNumber, productCode);

        model.addAttribute("heartlist", heartlistDTO);
        model.addAttribute("products", productsDTO);
        model.addAttribute("parentComments", parentComments);
        model.addAttribute("childComments", childComments);
        model.addAttribute("page", page);
        return "Products/detail";
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
    // /products/paging?page=2
    // 처음 페이지 요청은 1페이지를 보여줌
    @GetMapping("/paging")
    public String paging(Model model,
                         @RequestParam(value = "page", required = false, defaultValue = "1") int page,
                         @RequestParam(value = "productName", required = false, defaultValue = "") String productName,
                         @RequestParam(value = "productLine", required = false, defaultValue = "") String productLine,
                         @RequestParam(value = "charge", required = false, defaultValue = "") String charge,
                         @RequestParam(value = "discountStatus", required = false, defaultValue = "") String discountStatus,
                         @RequestParam(value = "sort", required = false, defaultValue = "") String sort) {

        // 해당 페이지에서 보여줄 글 목록
        List<ProductsDTO> pagingList;
        List<ProductsDTO> productLineList = productsService.productLineList();
        List<ProductsDTO> skillNameCountList = productsService.skillNameCountList();
        List<ProductsDTO> productsDTOList = productsService.findAll();
        PageDTO pageDTO;

    /*    if (sort.equals("buyPrice")) {
            pagingList = productsService.pagingListSortedByPrice(page, productName, productLine);
            pageDTO = productsService.pagingParamSortedByPrice(page, productName, productLine, charge, discountStatus);
        } else if (sort.equals("productsHits")) {
            pagingList = productsService.pagingListSortedByHits(page, productName, productLine);
            pageDTO = productsService.pagingParamSortedByHits(page, productName, productLine, charge, discountStatus);
        } else if (sort.equals("comments")) {
            pagingList = productsService.pagingListSortedByComments(page, productName, productLine);
            pageDTO = productsService.pagingParamSortedByComments(page, productName, productLine, charge, discountStatus);
        } else {*/
            pagingList = productsService.pagingList(page, productName, productLine, charge, discountStatus);
            pageDTO = productsService.pagingParam(page, productName, productLine, charge, discountStatus);
        /*}*/

        model.addAttribute("productsDTOList", productsDTOList);
        model.addAttribute("productsList", pagingList);
        model.addAttribute("productLineList", productLineList);
        model.addAttribute("skillNameCountList", skillNameCountList);
        model.addAttribute("paging", pageDTO);
        return "Products/paging";
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
