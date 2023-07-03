<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EmpCustomerList</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/productsPaging.css">
</head>
<body>
    <table>
        <tr>
            <th>customerNumber</th>
            <th>checkNumber</th>
            <th>paymentDate</th>
            <th>amount</th>
        </tr>
        <c:forEach items="${customersPaymentList}" var="payments">
            <tr>
                <td>${payments.customerNumber}</td>
                <td>${payments.checkNumber}</td>
                <td>${payments.paymentDate}</td>
                <td>${payments.amount}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>