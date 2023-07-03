package com.jaeseong.service;

import com.jaeseong.dto.PageDTO;
import com.jaeseong.dto.ProductsDTO;
import com.jaeseong.repository.ProductsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class ProductsService {
    private final ProductsRepository productsRepository;

    public int save(ProductsDTO productsDTO) {
        return productsRepository.save(productsDTO);
    }

    public List<ProductsDTO> findAll() {
        return productsRepository.findAll();
    }

    public ProductsDTO findByProductCode(String productCode) {
        return productsRepository.findByProductCode(productCode);
    }

    public void updateHits(String productCode) {
        productsRepository.updateHits(productCode);
    }

    public void delete(String productCode) {
        productsRepository.delete(productCode);
    }

    public void update(ProductsDTO productsDTO) {
        productsRepository.update(productsDTO);
    }

    int pageLimit = 10; // 한 페이지당 보여줄 글 갯수
    int blockLimit = 10; // 하단에 보여줄 페이지 번호 갯수

    public List<ProductsDTO> pagingList(int page, String productName, String productLine, String charge, String discountStatus) {
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
        pagingParams.put("productName", productName);
        pagingParams.put("productLine", productLine);
        pagingParams.put("charge", charge);
        pagingParams.put("discountStatus", discountStatus);
        List<ProductsDTO> pagingList = productsRepository.pagingList(pagingParams);

        return pagingList;
    }
    public List<ProductsDTO> pagingListSortedByPrice(int page, String productName, String productLine) {
        /*
        1페이지당 보여지는 글 갯수 10
            1page => 0
            2page => 3
            3page => 6
         */
        int pagingStart = (page - 1) * pageLimit;
        Map<String, Object> pagingParams = new HashMap<>();
        pagingParams.put("start", pagingStart);
        pagingParams.put("limit", pageLimit);
        pagingParams.put("productName", productName);
        pagingParams.put("productLine", productLine);
        List<ProductsDTO> pagingListSortedByPrice = productsRepository.pagingListSortedByPrice(pagingParams);

        return pagingListSortedByPrice;
    }
    public List<ProductsDTO> pagingListSortedByHits(int page, String productName, String productLine) {
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
        pagingParams.put("productName", productName);
        pagingParams.put("productLine", productLine);
        List<ProductsDTO> pagingListSortedByHits = productsRepository.pagingListSortedByHits(pagingParams);

        return pagingListSortedByHits;
    }

    public List<ProductsDTO> pagingListSortedByComments(int page, String productName, String productLine) {
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
        pagingParams.put("productName", productName);
        pagingParams.put("productLine", productLine);
        List<ProductsDTO> pagingListSortedByComments = productsRepository.pagingListSortedByComments(pagingParams);

        return pagingListSortedByComments;
    }

    public PageDTO pagingParam(int page, String productName, String productLine, String charge, String discountStatus)  {
        // 전체 글 갯수 조회
        int productsCount = productsRepository.productsCount(productName, productLine, charge, discountStatus);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) productsCount / pageLimit));
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
    public PageDTO pagingParamSortedByPrice(int page, String productName, String productLine, String charge, String discountStatus) {
        // 전체 글 갯수 조회
        int productsCount = productsRepository.productsCount(productName, productLine, charge, discountStatus);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) productsCount / pageLimit));
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
    public PageDTO pagingParamSortedByHits(int page, String productName, String productLine, String charge, String discountStatus) {
        // 전체 글 갯수 조회
        int productsCount = productsRepository.productsCount(productName, productLine, charge, discountStatus);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) productsCount / pageLimit));
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

    public PageDTO pagingParamSortedByComments(int page, String productName, String productLine, String charge, String discountStatus) {
        // 전체 글 갯수 조회
        int productsCount = productsRepository.productsCount(productName, productLine, charge, discountStatus);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) productsCount / pageLimit));
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

    public void priceUp(String productCode) {
        productsRepository.priceUp(productCode);
    }

    public void priceDown(String productCode) {
        productsRepository.priceDown(productCode);
    }

    public void updateOrInsertHeartlist(int customerNumber, String productCode) {
        productsRepository.updateOrInsertHeartlist(customerNumber, productCode);
    }

    public List<ProductsDTO> productLineList() {
        return productsRepository.productLineList();
    }

    public List<ProductsDTO> FreeProducts() {
        return productsRepository.FreeProducts();
    }

    public List<ProductsDTO> beginnerProducts() {
        return productsRepository.beginnerProducts();

    }

    public List<ProductsDTO> LoginCustomerProducts(Integer customerNumber) {
        return productsRepository.LoginCustomerProducts(customerNumber);
    }

    public List<ProductsDTO> RecommendProductsDTOList(Integer customerNumber) {
        return productsRepository.RecommendProductsDTOList(customerNumber);
    }

    public List<ProductsDTO> productLineCount() {
        return productsRepository.productLineCount();
    }

    public List<ProductsDTO> skillNameCountList() {
        return productsRepository.skillNameCountList();
    }

    public List<ProductsDTO> myProductsList(Integer customerNumber) {
        return productsRepository.myProductsList(customerNumber);
    }
}
