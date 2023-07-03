package com.jaeseong.repository;

import com.jaeseong.dto.EmployeesDTO;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class EmployeesRepository {
    private final SqlSessionTemplate sql;

    public int save(EmployeesDTO EmployeesDTO) {
        System.out.println("EmployeesDTO = " + EmployeesDTO);
        return sql.insert("Employees.save", EmployeesDTO);
    }

    public EmployeesDTO login(EmployeesDTO EmployeesDTO) {
        return sql.selectOne("Employees.login", EmployeesDTO);
    }

    public List<EmployeesDTO> findAll() {
         return sql.selectList("Employees.findAll");
    }

    public EmployeesDTO findById(Long employeeNumber) {
        return sql.selectOne("Employees.findById", employeeNumber);
    }

    public void delete(Long employeeNumber) {
        sql.delete("Employees.delete", employeeNumber);
    }

    public EmployeesDTO findByEmployeesEmail(String loginEmail) {
        return sql.selectOne("Employees.findByEmployeesEmail", loginEmail);
    }

    public int update(EmployeesDTO EmployeesDTO) {
        return sql.update("Employees.update", EmployeesDTO);
    }
}
