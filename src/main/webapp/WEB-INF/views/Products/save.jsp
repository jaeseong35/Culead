<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>save</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/save.css">
</head>
<body>
    <form action="/products/save" method="post" enctype="multipart.form-data">
        <input type="text" name="productCode" placeholder="상품코드">
        <input type="text" name="productName" placeholder="상품이름">
        <select name="productLine" >
                             <option selected>상품라인</option>
                             <option value="Classic Cars">Classic Cars</option>
                             <option value="Motorcycles">Motorcycles</option>
                             <option value="Planes">Planes</option>
                             <option value="Ships">Ships</option>
                             <option value="Trains">Trains</option>
                             <option value="Trucks and Buses">Trucks and Buses</option>
                             <option value="Vintage Cars">Vintage Cars</option>
                          </select>
        <input type="text" name="productScale" placeholder="상품크기">
        <input type="text" name="productVendor" placeholder="판매업자">
        <textarea name="productDescription" cols="30" rows="10" placeholder="내용을 입력하세요"></textarea>
        <input type="number" name="quantityInStock" placeholder="재고수량">
        <input type="number" name="buyPrice" placeholder="가격">
        <input type="number" name="MSRP" placeholder="권장소비자가격">
         <div id="file-inputs">
                           <div class="file-input-wrapper">
                               <input type="file" name="files[]" multiple>
                               <button type="button" class="delete-file-button">Delete File</button>
                       <button type="button" onclick="addFileInput()">Add File</button>
                               </div>
                   </div>
                   </div>
                     <input type="submit" value="작성">
    </form>

         <script>
           function addFileInput() {
             const fileInputs = document.getElementById("file-inputs");
             const wrapper = document.createElement("div");
             wrapper.classList.add("file-input-wrapper");

             const newInput = document.createElement("input");
             newInput.type = "file";
             newInput.name = "files[]";
             newInput.multiple = true;

             const deleteButton = document.createElement("button");
             deleteButton.textContent = "Delete File";
             deleteButton.classList.add("delete-file-button");
             deleteButton.onclick = function() {
               fileInputs.removeChild(wrapper);
             };

             wrapper.appendChild(newInput);
             wrapper.appendChild(deleteButton);
             fileInputs.appendChild(wrapper);
           }
           </script>

</body>
</html>