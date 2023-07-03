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
            <th>productCode</th>
            <th>quantityOrdered</th>
            <th>priceEach</th>
            <th>orderLineNumber</th>
        </tr>
        <c:forEach items="${orderDetailList}" var="orderDetails">
            <tr>
                <td>${orderDetails.orderNumber}</td>
                <td>
                  <a href="../products?productCode=${orderDetails.productCode}">${orderDetails.productCode}</a>
                </td>
                <td>${orderDetails.quantityOrdered}</td>
                <td>${orderDetails.priceEach}</td>
                <td>${orderDetails.orderLineNumber}</td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>