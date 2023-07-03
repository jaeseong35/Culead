<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <style>
        /* 헤더 스타일 */
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        header h2 {
            margin: 0;
        }

        /* 내비게이션 메뉴 스타일 */
        nav {
            margin-top: 10px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
        }

        /* 푸터 스타일 */
        footer {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h2>PROJECT_M1</h2>
        <nav>
            <a href="/employees/save">회원가입</a>
            <a href="/customers/login">고객로그인</a>
            <a href="/employees/login">직원로그인</a>
        </nav>
    </header>
    <main>
        <!-- 쇼핑몰 내용 -->
    </main>
    <footer>
        &copy; 2023 PROJECT_M1. All rights reserved.
    </footer>
</body>
</html>
