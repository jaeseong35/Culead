<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>detail</title>
    <link rel="stylesheet" href="/resources/css/productsDetail.css" type="text/css" />
</head>
<body>
    <table>
        <tr>
            <th>email</th>
            <td>${employees.email}</td>
        </tr>
        <tr>
            <th>firstName</th>
            <td>${employees.firstName}</td>
        </tr>
        <tr>
            <th>lastName</th>
            <td>${employees.lastName}</td>
        </tr>
        <tr>
            <th>officeCode</th>
            <td>${employees.officeCode}</td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td>${employees.extension}</td>
        </tr>
        <tr>
            <th>상급자</th>
            <td>${employees.reportsTo}</td>
        </tr>
        <tr>
              <th>직급</th>
              <td>${employees.jobTitle}</td>
         </tr>
          <tr>
               <th>직급</th>
               <td>${employees.jobTitle}</td>
          </tr>
           <tr>
                 <th>도시</th>
                 <td>${employees.city}</td>
           </tr>
           <tr>
                 <th>사무실 전화번호</th>
                 <td>${employees.phone}</td>
           </tr>
            <tr>
                  <th>주소1</th>
                  <td>${employees.addressLine1}</td>
            </tr>
           <tr>
                 <th>주소2</th>
                 <td>${employees.addressLine2}</td>
           </tr>
           <tr>
                <th>도시</th>
                <td>${employees.state}</td>
           </tr>
           <tr>
                <th>국가</th>
                <td>${employees.country}</td>
           </tr>
           <tr>
                 <th>우편번호</th>
                  <td>${employees.postalCode}</td>
           </tr>
           <tr>
               <th>대륙</th>
               <td>${employees.territory}</td>
          </tr>

    </table>
</body>
</html>