package com.jaeseong.service;

import com.jaeseong.dto.*;
import com.jaeseong.dto.CustomersDTO;
import com.jaeseong.repository.CustomersRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CustomersService {

    private final CustomersRepository customersRepository;

    public int save(CustomersDTO customersDTO) {
        return customersRepository.save(customersDTO);
    }

    int pageLimit = 10; // 한 페이지당 보여줄 글 갯수
    int blockLimit = 10; // 하단에 보여줄 페이지 번호 갯수
    public List<CustomersDTO> pagingList(int page, String keyword, String country) {
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
        pagingParams.put("country", country);
        List<CustomersDTO> pagingList = customersRepository.pagingList(pagingParams);

        return pagingList;
    }

    public PageDTO pagingParam(int page, String keyword, String country) {
        
        // 전체 글 갯수 조회
        int customersCount = customersRepository.customersCount(keyword, country);
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        int maxPage = (int) (Math.ceil((double) customersCount / pageLimit));
        // 시작 페이지 값 계산(1, 4, 7, 10, ~~~~)
        int startPage = (((int)(Math.ceil((double) page / blockLimit))) - 1) * blockLimit + 1;
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
    public List<CustomersDTO>  findBySalesRepEmployeeNumber(Long salesRepEmployeeNumber) {
        return customersRepository.findBySalesRepEmployeeNumber(salesRepEmployeeNumber);

    }
    public void delete(Long salesRepEmployeeNumber) {
        customersRepository.delete(salesRepEmployeeNumber);
    }

    public List<PaymentDTO> findByCustomerNumberPaymentList(int customerNumber) {
        return customersRepository.findByCustomerNumberPaymentList(customerNumber);
    }

    public List<OrdersDTO> findByCustomerNumberOrderList(int customerNumber) {
        return customersRepository.findByCustomerNumberOrderList(customerNumber);
    }

    public List<OrderDetailsDTO> findByOrderNumber(int orderNumber) {
        return customersRepository.findByOrderNumber(orderNumber);
    }


    public List<CustomersDTO> countryList() {
        return customersRepository.countryList();
    }

    public List<CustomersDTO> searchByCountry(int page, String keyword, String selectedCountry) {
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
        pagingParams.put("country", selectedCountry);
        List<CustomersDTO> pagingList = customersRepository.pagingList(pagingParams);

        return pagingList;
    }

    public boolean login(CustomersDTO CustomersDTO) {
        CustomersDTO loginCustomers = customersRepository.login(CustomersDTO);
        if (loginCustomers != null) {
            return true;
        } else {
            return false;
        }
    }
    public boolean findPassword(CustomersDTO CustomersDTO) {
        CustomersDTO loginCustomers = customersRepository.findPassword(CustomersDTO);
        if (loginCustomers != null) {
            return true;
        } else {
            return false;
        }
    }

    public String customersNumberCheck(int customersNumber) {
        CustomersDTO customersDTO = customersRepository.findByCustomerNumber(customersNumber);
        if (customersDTO == null) {
            return "ok";
        } else {
            return "no";
        }
    }
    public String findByCustomerName(String contactFirstName) {
        CustomersDTO customersDTO = customersRepository.findByCustomerName(contactFirstName);
        if (customersDTO != null) {
            return "ok";
        } else {
            return "no";
        }
    }

    public int CustomersNumbers() {
        return customersRepository.CustomersNumbers();
    }

    public CustomersDTO findNumber(CustomersDTO customersDTO) {
        return customersRepository.findNumber(customersDTO);
    }
}
