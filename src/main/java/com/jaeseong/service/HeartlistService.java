package com.jaeseong.service;

import com.jaeseong.dto.HeartlistDTO;
import com.jaeseong.repository.EmployeesRepository;
import com.jaeseong.repository.HeartlistRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class HeartlistService {

    private final HeartlistRepository heartlistRepository;

    public HeartlistDTO findByCustomerAndProduct(int customerNumber, String productCode) {
        return heartlistRepository.findByCustomerAndProduct(customerNumber, productCode);
    }
}
