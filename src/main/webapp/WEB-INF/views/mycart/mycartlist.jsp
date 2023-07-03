<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>cartlist</title>
</head>
<body>
<div>


    <table>
        <tr>
          <th>customerNumber</th>
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
           <th>주문 조회</th>
           <th>payments 조회</th>
        </tr>
        <c:forEach items="${customersList}" var="customers">
            <tr>
                 <td>${customers.customerNumber}</a></td>
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
                  <td>
                      <a href="/customers/orderList?customerNumber=${customers.customerNumber}&page=${paging.page}">orderList</a>
                  </td>
                  <td>
                     <a href="/customers/customersPaymentList?customerNumber=${customers.customerNumber}&page=${paging.page}">payments</a>
                  </td>
            </tr>
        </c:forEach>
    </table>
</div>

<div>
    <c:choose>
        <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
        <c:when test="${paging.page<=1}">
            <span>[이전]</span>
        </c:when>
        <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
        <c:otherwise>
            <a href="/customers/paging?page=${paging.page-1}&keyword=${param.keyword}&country=${param.country}">[이전]</a>
        </c:otherwise>
    </c:choose>

    <%--  for(int i=startPage; i<=endPage; i++)      --%>
    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
        <c:choose>
            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
            <c:when test="${i eq paging.page}&keyword=${param.keyword}&country=${param.country}">
                <span>${i}</span>
            </c:when>

            <c:otherwise>
                <a href="/customers/paging?page=${i}&keyword=${param.keyword}&country=${param.country}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <c:choose>
        <c:when test="${paging.page>=paging.maxPage}">
            <span>[다음]</span>
        </c:when>
        <c:otherwise>
                <a href="/customers/paging?page=${paging.page+1}&keyword=${param.keyword}&country=${param.country}">[다음]</a>
        </c:otherwise>
    </c:choose>
</div>
  <a href="/customers/index">돌아가기</a>
</body>
</html>
