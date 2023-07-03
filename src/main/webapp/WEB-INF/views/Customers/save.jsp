<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/save.css">
</head>
<body>
    <form action="/customers/save" method="post">
        <input type="number" name="customerNumber" placeholder="고객번호">
        <input type="text" name="customerName" placeholder="customerName">
        <input type="text" name="contactLastName" placeholder="contactLastName">
        <input type="text" name="contactFirstName" placeholder="contactFirstName">
        <input type="text" name="phone" placeholder="phone">
        <input type="text" name="addressLine1" placeholder="addressLine1">
        <input type="text" name="addressLine2" placeholder="addressLine2">
        <input type="text" name="city" placeholder="city">
        <input type="text" name="state" placeholder="state">
        <input type="text" name="postalCode" placeholder="postalCode">
        <input type="text" name="country" placeholder="country">
         <select name="salesRepEmployeeNumber" >
                                     <option selected>salesRepEmployeeNumber</option>
                                     <option value="1002">Murphy</option>
                                     <option value="1056">Patterson</option>
                                     <option value="Planes">Firrelli</option>
                                     <option value="Ships">Patterson</option>
                                     <option value="Trains">Bondur</option>
                                     <option value="Trucks and Buses">Bow</option>
                                      <option value="Trucks and Buses">Jennings</option>
                                       <option value="Trucks and Buses">Thompson</option>
                                        <option value="Trucks and Buses">Firrelli</option>
                                         <option value="Trucks and Buses">Patterson</option>
                                          <option value="Trucks and Buses">Bow</option>
                                           <option value="Trucks and Buses">Bow</option>
                                  </select>
        <input type="number" name="creditLimit" placeholder="creditLimit">
        <input type="submit" value="작성">
    </form>
</body>
</html>