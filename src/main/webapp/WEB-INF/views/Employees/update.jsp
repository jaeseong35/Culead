<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/update.css">
</head>
<body>
    <form action="/employees/update" method="post" name="updateForm">
        employeeNumber: <input type="number" name="employeeNumber" id="employeeNumber">
        email: <input type="text" name="email" value="${employees.email}"readonly>
        firstName: <input type="text" name="firstName" value="${employees.firstName}" readonly>
         lastName: <input type="text" name="lastName" value="${employees.lastName}" readonly>
        officeCode: <input type="number" name="officeCode" value="${employees.officeCode}">
        extension: <input type="text" name="extension" value="${employees.extension}">
        reportsTo: <input type="number" name="reportsTo" value="${employees.reportsTo}">
         jobTitle: <input type="text" name="jobTitle" value="${employees.jobTitle}">
        <input type="button" value="수정" onclick="update()">

    </form>
</div>
</body>
<script>
    const update = () => {
        const passwordDB = '${employees.employeeNumber}';
        const password = document.getElementById("employeeNumber").value;
        if (passwordDB == password) {
            document.updateForm.submit();
        } else {
            alert("employeeNumber가 일치하지 않습니다!");
        }
    }
</script>
</html>