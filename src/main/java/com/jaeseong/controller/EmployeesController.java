package com.jaeseong.controller;

import com.jaeseong.dto.EmployeesDTO;
import com.jaeseong.service.EmployeesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/employees")
@RequiredArgsConstructor
public class EmployeesController {

    private final EmployeesService employeesService;

    @GetMapping("/save")
    public String saveForm(){
        return "Employees/save";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute EmployeesDTO employeesDTO){
       int saveResult =  employeesService.save(employeesDTO);
       if(saveResult > 0)  {
           return "Employees/login";
       }else {
           return "Employees/save";
       }
    }
    @GetMapping("/login")
    public String loginForm(){
        return "Employees/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute EmployeesDTO employeesDTO, HttpSession session){
        boolean loginResult = employeesService.login(employeesDTO);
        if(loginResult){
            session.setAttribute("loginEmail", employeesDTO.getEmail());
            return "Employees/main";
        }else {
            return "Employees/login";
        }
    }
    @GetMapping("/")
    public String findAll(Model model){
        List<EmployeesDTO> employeesDTOList = employeesService.findAll();
        model.addAttribute("employeesList", employeesDTOList);
        return "Employees/list";
    }

    @GetMapping
    public String findByEmployeesEmail(@RequestParam("email") String email, Model model){
        EmployeesDTO employeesDTO = employeesService.findByEmployeesEmail(email);
        model.addAttribute("employees", employeesDTO);
        return "Employees/detail";
    }


    @GetMapping("/delete")
    public String delete(@RequestParam("employeeNumber") Long employeeNumber){
        employeesService.delete(employeeNumber);
        return "redirect:/employees/";
    }

    // 수정 화면 요청
    @GetMapping("/update")
    public String updateForm(HttpSession session, Model model) {
    //세션에 저장된 나의 이메일 가져오기
        String loginEmail = (String) session.getAttribute("loginEmail");
        EmployeesDTO employeesDTO = employeesService.findByEmployeesEmail(loginEmail);
        model.addAttribute("employees", employeesDTO);
        return "Employees/update";
    }
    //수정 처리
    @PostMapping("/update")
    public String update(@ModelAttribute EmployeesDTO employeesDTO) {
        boolean result = employeesService.update(employeesDTO);
        if (result) {
            return "redirect:/employees?employeeNumber=" + employeesDTO.getEmployeeNumber();
        } else {
            return "Employees/index";
        }
    }
    @PostMapping("/email-check")
    public @ResponseBody String emailCheck(@RequestParam("employeesEmail") String employeesEmail) {
        System.out.println("employeesEmail =" + employeesEmail);
        String checkResult = employeesService.emailCheck(employeesEmail);
        return checkResult;
    }
}
