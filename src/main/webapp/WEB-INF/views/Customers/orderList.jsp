<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>orderList</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/productsPaging.css">
</head>
<body>
    <table>
        <tr>
            <th>orderNumber</th>
            <th>orderDate</th>
            <th>requiredDate</th>
            <th>shippedDate</th>
            <th>status</th>
            <th>comments</th>
            <th>customerNumber</th>
        </tr>
        <c:forEach items="${orderList}" var="orders">
            <tr>
                <td><a href="/customers/orderDetail?orderNumber=${orders.orderNumber}&page=${paging.page}">${orders.orderNumber}</a></td>
                <td>${orders.orderDate}</td>
                <td>${orders.requiredDate}</td>
                <td>${orders.shippedDate}</td>
                <td>${orders.status}</td>
                <td>${orders.comments}</td>
                <td>${orders.customerNumber}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>