<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/save.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
</head>
<body>
    <form action="/employees/save" method="post">
        <input type="text" name="email" placeholder="이메일" id="employeesEmail" onblur="emailCheck()">
        <p id="check-result"></p>
        <input type="number" name="employeeNumber" placeholder="직원번호">
        <input type="text" name="firstName" placeholder="성">
        <input type="text" name="lastName" placeholder="이름">
         <input type="text" name="extension" placeholder="직원전화번호">
         <input type="number" name="reportsTo" placeholder="상급자번호">
         <input type="text" name="jobTitle" placeholder="직급">
          <input type="number" name="officeCode" placeholder="사무실번호">
        <input type="submit" value="회원가입">
    </form>
</body>
<script>
// 이메일 입력값을 가져오고,
// 입력값을 서버로 전송하고 똑같은 이메일이 있는지 체크한 후
// 사용 가능 여부를 이메일 입력창 아래에 표시
    const emailCheck = () => {
        const email = document.getElementById("employeesEmail").value;
        const checkResult = document.getElementById("check-result");
        console.log("입력한 이메일", email);
        $.ajax({
            // 요청방식: post, url: "email-check", 데이터: 이메일
            type: "post",
            url: "/employees/email-check",
            data: {
                "employeesEmail": email
            },
            success: function(res) {
                console.log("요청성공", res);
                if (res == "ok") {
                    console.log("사용가능한 이메일");
                    checkResult.style.color = "green";
                    checkResult.innerHTML = "사용가능한 이메일";
                } else {
                    console.log("이미 사용중인 이메일");
                    checkResult.style.color = "red";
                    checkResult.innerHTML = "이미 사용중인 이메일";
                }
            },
            error: function(err) {
                console.log("에러발생", err);
            }
        });
    }
</script>
</html>










