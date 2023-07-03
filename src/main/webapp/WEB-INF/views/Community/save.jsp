<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/save.css">
</head>
<body>
    <form action="/community/save" method="post">
        <input type="number" name="cmntyNo" placeholder="게시글번호">
        <input type="number" name="customerNumber" value="${sessionScope.CustomerNumber}" />
        <input type="text" name="cmntyTitle" placeholder="제목">
        <input type="text" name="cmntyContent" placeholder="내용">
        <input type="text" name="cmntyType" placeholder="게시글종류">
        <input type="submit" value="작성">
    </form>
</body>
</html>
