<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
      <link rel="stylesheet" href="/resources/css/login.css" type="text/css" />
</head>
<body>
    <form action="/employees/login" method="post">
        <input type="text" name="email" placeholder="이메일">
        <input type="text" name="employeeNumber" placeholder="직원번호">
        <input type="submit" value="로그인">
    </form>
</body>
</html>