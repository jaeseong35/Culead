<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>paging</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/productsPaging.css">
</head>
<body>
<div>
<form action="/orders/paging" method="get">
  <input type="text" name="keyword" placeholder="검색어를 입력하세요">
  <input type="hidden" name="page" value="${page}">
  <button type="submit">검색</button>
</form>
    <table>
        <tr>
          <th>orderNumber</th>
           <th>orderDate</th>
           <th>requiredDate</th>
           <th>shippedDate</th>
           <th>status</th>
           <th>comments</th>
           <th>customerNumber</th>
           <th>주문 조회</th>
           <th>고객 조회</th>
        </tr>
        <c:forEach items="${ordersList}" var="orders">
            <tr>
                 <td>${orders.orderNumber}</a></td>
                  <td>${orders.orderDate}</td>
                  <td>${orders.requiredDate}</td>
                  <td>${orders.shippedDate}</td>
                  <td>${orders.status}</td>
                  <td>${orders.comments}</td>
                  <td>${orders.customerNumber}</td>
                   <td>
                      <a href="">orderList</a>
                  </td>
                  <td>
                     <a href="">customer</a>
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
            <a href="/orders/paging?page=${paging.page-1}&keyword=${param.keyword}">[이전]</a>
        </c:otherwise>
    </c:choose>

    <%--  for(int i=startPage; i<=endPage; i++)      --%>
    <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
        <c:choose>
            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
            <c:when test="${i eq paging.page}&keyword=${param.keyword}">
                <span>${i}</span>
            </c:when>

            <c:otherwise>
                <a href="/orders/paging?page=${i}&keyword=${param.keyword}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <c:choose>
        <c:when test="${paging.page>=paging.maxPage}">
            <span>[다음]</span>
        </c:when>
        <c:otherwise>
                <a href="/orders/paging?page=${paging.page+1}&keyword=${param.keyword}">[다음]</a>
        </c:otherwise>
    </c:choose>
</div>
  <a href="/orders/index">돌아가기</a>
</body>
</html>
