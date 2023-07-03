package com.jaeseong.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class EmployeesDTO {

    private Long employeeNumber;
    private String email;
    private String firstName;
    private String lastName;
    private int officeCode;
    private String extension;
    private Long reportsTo;
    private String jobTitle;

    //office

    private String city;

    private String phone;

    private String addressLine1;

    private String addressLine2;

    private String state;

    private String country;

    private String postalCode;

    private String territory;


    // office

    public EmployeesDTO() {}

    public EmployeesDTO(Long employeeNumber, String lastName, String firstName, String extension, String email,
                     int officeCode, Long reportsTo, String jobTitle) {
        this.employeeNumber = employeeNumber;
        this.lastName = lastName;
        this.firstName = firstName;
        this.extension = extension;
        this.email = email;
        this.officeCode = officeCode;
        this.reportsTo = reportsTo;
        this.jobTitle = jobTitle;
    }
}
