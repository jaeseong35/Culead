<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>list</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/productsPaging.css">
</head>
<body>
    <table>
        <tr>
            <th>employeeNumber</th>
            <th>email</th>
            <th>firstName</th>
            <th>lastName</th>
            <th>officeCode</th>
            <th>extension</th>
             <th>reportsTo</th>
              <th>jobTitle</th>
            <th>조회</th>
            <th>삭제</th>
        </tr>
        <c:forEach items="${employeesList}" var="employees">
            <tr>
                <td>${employees.employeeNumber}</td>
                <td>
                    <a href="/employees?email=${employees.email}">${employees.email}</a>
                </td>
                <td>${employees.firstName}</td>
                <td>${employees.lastName}</td>
                <td>${employees.officeCode}</td>
                <td>${employees.extension}</td>
                  <td>${employees.reportsTo}</td>
                    <td>${employees.jobTitle}</td>
                <td>
                    <a href="/customers?salesRepEmployeeNumber=${employees.employeeNumber}">담당 고객 조회</a>

                </td>
                <td>
                    <button onclick="deleteEmployees('${employees.employeeNumber}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
<script>
    const deleteEmployees = (employeeNumber) => {
        console.log(employeeNumber);
        location.href = "/employees/delete?employeeNumber="+employeeNumber;
    }
</script>
</html>