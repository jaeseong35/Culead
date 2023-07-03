<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EmpCustomerList</title>
    <link rel="stylesheet" href="/resources/css/productsDetail.css" type="text/css" />
</head>
<body>
    <table>
        <tr>
            <th>customerName</th>
            <th>contactLastName</th>
            <th>contactFirstName</th>
            <th>phone</th>
            <th>addressLine1</th>
            <th>addressLine2</th>
            <th>city</th>
            <th>state</th>
            <th>postalCode</th>
            <th>country</th>
            <th>salesRepEmployeeNumber</th>
            <th>creditLimit</th>
        </tr>
        <c:forEach items="${customersEMPList}" var="customers">
            <tr>
                <td>${customers.customerName}</td>
                <td>${customers.contactLastName}</td>
                <td>${customers.contactFirstName}</td>
                <td>${customers.phone}</td>
                <td>${customers.addressLine1}</td>
                <td>${customers.addressLine2}</td>
                <td>${customers.city}</td>
                <td>${customers.state}</td>
                <td>${customers.postalCode}</td>
                <td>${customers.country}</td>
                <td>${customers.salesRepEmployeeNumber}</td>
                <td>${customers.creditLimit}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>