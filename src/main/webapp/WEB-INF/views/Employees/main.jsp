<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>

</head>
<body>
    <h2>${sessionScope.loginEmail} 님 환영합니다.</h2>
    <button onclick="update()">내정보 수정하기</button>
    <button onclick="logout()">로그아웃</button>
          <a href="/employees/">직원목록 조회</a>
          <a href="../products/index">상품관리</a>
          <a href="../customers/index">고객관리</a>
          <a href="../orders/index">주문관리</a>
</body>
<script>
    const update = () => {
        location.href = "/employees/update";
    }
    const logout = () => {
        location.href = "/employees/logout";
    }
</script>
</html>