<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update.jsp</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/update.css">
</head>
<body>
    <form action="/products/update" method="post" name="updateForm">
        <input type="hidden" name="productCode" value="${products.productCode}" readonly>
        <input type="text" name="productName" value="${products.productName}">
        <input type="text" name="productLine" value="${products.productLine}">
        <input type="text" name="productScale" value="${products.productScale}">
        <input type="text" name="productVendor" value="${products.productVendor}">
        <textarea name="productDescription" cols="30" rows="10">${products.productDescription}</textarea>
        <input type="number" name="quantityInStock" value="${products.quantityInStock}">
        <input type="number" name="buyPrice" value="${products.buyPrice}">
        <input type="number" name="MSRP" value="${products.MSRP}">
         <input type="submit" value="수정">
    </form>
</div>
</body>
</html>