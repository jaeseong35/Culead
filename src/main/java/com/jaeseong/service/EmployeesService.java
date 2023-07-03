package com.jaeseong.service;

import com.jaeseong.dto.EmployeesDTO;
import com.jaeseong.repository.EmployeesRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EmployeesService {
    private final EmployeesRepository employeesRepository;

    public int save(EmployeesDTO employeesDTO) {
        return employeesRepository.save(employeesDTO);
    }

    public boolean login(EmployeesDTO employeesDTO) {
        EmployeesDTO loginEmployees = employeesRepository.login(employeesDTO);
        if (loginEmployees != null) {
            return true;
        } else {
            return false;
        }
    }

    public List<EmployeesDTO> findAll() {
        return employeesRepository.findAll();
    }

    public EmployeesDTO findById(Long employeeNumber) {
        return employeesRepository.findById(employeeNumber);

    }

    public void delete(Long employeeNumber) {
        employeesRepository.delete(employeeNumber);
    }

    public EmployeesDTO findByEmployeesEmail(String loginEmail) {
        return employeesRepository.findByEmployeesEmail(loginEmail);
    }

    public boolean update(EmployeesDTO employeesDTO) {
        int result = employeesRepository.update(employeesDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }

    public String emailCheck(String employeesEmail) {
        EmployeesDTO employeesDTO = employeesRepository.findByEmployeesEmail(employeesEmail);
        if (employeesDTO == null) {
            return "ok";
        } else {
            return "no";
        }
    }
}
