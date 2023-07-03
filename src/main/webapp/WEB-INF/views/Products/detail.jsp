<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>detail.jsp</title>

     <link rel="stylesheet" href="/resources/css/productsDetail.css" type="text/css" />
     <!-- jquery cdn -->
     <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
</head>
<body>
    <table>

        <tr>
            <th>강의 코드</th>
            <td>${products.productCode}</td>
        </tr>
        <tr>
            <th>강의명</th>
            <td>${products.productName}</td>
        </tr>
        <tr>
            <th>강의 난이도</th>
            <td>${products.productLine}</td>
        </tr>
        <tr>
             <th>강의 설명</th>
             <td>${products.productDescription}</td>
        </tr>
         <tr>
              <th>남은 수강 인원</th>
              <td>${products.quantityInStock}</td>
         </tr>
         <tr>
              <th>가격</th>
              <td>${products.buyPrice}</td>
         </tr>

         <tr>

          <th>수강생 수</th>
             <td>${products.heartNumber}</td>
          </tr>
          <tr>
              <th>image</th>
             <td><img src="resources/images/Lec/${products.image}" alt=""></td>
          </tr>
          <tr>
          <th>가격인상</th>
            <td> <button class="btn btn-sm btn-outline-primary" onclick="priceUp('${products.productCode}')">가격인상</button></td>
          </tr>
           <tr>
           <th>가격인하</th>
             <td> <button class="btn btn-sm btn-outline-primary" onclick="priceDown('${products.productCode}')">가격인하</button></td>
           </tr>

<!-- 수강신청 버튼 -->
<th>수강신청</th>
<td>
       <c:choose>
               <c:when test="${heartlist.linked == true}">
                   <button class="btn btn-sm btn-outline-primary" onclick="updateOrInsertHeartlist('${products.productCode}', '${CustomerNumber}')">수강신청 취소</button>
               </c:when>
               <c:otherwise>
                   <button class="btn btn-sm btn-outline-primary" onclick="updateOrInsertHeartlist('${products.productCode}', '${CustomerNumber}')">수강신청</button>
               </c:otherwise>
           </c:choose>
</td>



    </table>
    <button onclick="listFn()">목록</button>
    <button onclick="updateFn()">수정</button>
    <button onclick="deleteFn()">삭제</button>

  <!-- 댓글 작성 부분 -->
  <c:if test="${heartlist.linked == true}">
      <form action="/comment/save" method="post" onsubmit="return validateComment()">
          <input type="text" name="commentWriter" id="commentWriter" readonly value="${ContactFirstName}">
          <input type="text" name="commentContents" id="commentContents" placeholder="내용">
          <input type="hidden" name="productCode" id="productCode" value="${products.productCode}">
          <input type="submit" value="수강평 작성">
      </form>
      <p id="commentError" style="color: red; display: none;">내용을 입력해주세요.</p>
  </c:if>
  <c:if test="${empty CustomerNumber}">
       <a href="/customers/login"><p>댓글을 작성하려면 로그인이 필요합니다.</p></a>
  </c:if>

</div>
<!-- 댓글 출력 부분 -->
<div id="comment-list">
    <table>
        <c:forEach items="${parentComments}" var="comment">

            <tr>
                <td>${comment.commentContents}</td>
                <td>작성자: ${comment.commentWriter}</td>
                <td>작성시간: ${comment.commentCreatedTime}</td>
                <td>
                    <button onclick="toggleChildComments(${comment.id})" class="toggle-btn" data-comment-id="${comment.id}">대댓글 보이기</button>
                    <button onclick="toggleCommentForm(${comment.id}, '${childComment.commentWriter}')">수강평 쓰기</button>
                </td>
                  <td>
                    <button onclick="confirmDelete(${comment.id})">삭제</button>
                  </td>
            </tr>
            <tr id="childComments${comment.id}" style="display: none;">
                <td colspan="4">
                    <table>
                        <c:forEach items="${childComments}" var="childComment">
                            <c:if test="${childComment.parent_id == comment.id }">
                                <tr>
                                    <td>${childComment.commentContents}</td>
                                    <td>작성자: ${childComment.commentWriter}</td>
                                    <td>작성시간: ${childComment.commentCreatedTime}</td>
                                    <td>
                                        <button onclick="confirmDelete(${childComment.id})">삭제</button>
                                    </td>
                                    <td>
                                        <button onclick="toggleCommentForm(${comment.id}, '${childComment.commentWriter}')">댓글쓰기</button>
                                    </td>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                         <!-- 댓글 작성란 -->
                         <tr id="commentForm${comment.id}" style="display: none;">
                            <td colspan="6">
                                    <!-- 댓글 작성에 필요한 필드 및 버튼 등을 포함한 HTML 코드 -->
                               <form action="/comment/childCommentsSave" method="post" onsubmit="return validateChildComment()">
                                    <input type="text" name="commentWriter" id="ChildCommentWriter" readonly value="${ContactFirstName}">
                                    <input type="text" name="commentContents" id="ChildCommentContents${comment.id}">
                                    <input type="text" name="productCode" value="${products.productCode}">
                                    <input type="hidden" name="parent_id" id="parent_id" value="${comment.id}">
                                    <input type="hidden" name="parent_writer" id="parent_writer${comment.id}">
                                    <input type="submit"  value="댓글 작성">
                               </form>
                                 <p id="ChildCommentError" style="color: red; display: none;">내용을 입력해주세요.</p>
                              </td>
                         </tr>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<script>
function toggleChildComments(commentId) {
    var childComments = document.getElementById("childComments" + commentId);
    var button = document.querySelector("button[data-comment-id='" + commentId + "']");

    if (childComments.style.display === "none") {
        childComments.style.display = "table-row";
        button.textContent = "대댓글 숨기기";
    } else {
        childComments.style.display = "none";
        button.textContent = "대댓글 보이기";
    }
}
</script>

<script>
function toggleCommentForm(commentId, parentWriter) {
    var commentForm = document.getElementById("commentForm" + commentId);
    var parentWriterField = document.getElementById("parent_writer" + commentId);
    var ChildCommentContents = document.getElementById("ChildCommentContents" + commentId);
    if (commentForm.style.display === "none") {
        commentForm.style.display = "table-row";
        parentWriterField.value = parentWriter;
        ChildCommentContents.value = "@" + parentWriter;
    } else {
        commentForm.style.display = "none";
    }
}
</script>

</body>

<script th:inline="javascript">

    const listFn = () => {
        const page = '${page}';
        location.href = "/products/paging?page=" + page;
    }
    const updateFn = () => {
        const id = '${products.productCode}';
        location.href = "/products/update?productCode=" + id;
    }
       const deleteFn = () => {
            const id = '${products.productCode}';
            const confirmDelete = confirm('정말 삭제하시겠습니까?');
            if (confirmDelete) {
                location.href = "/products/delete?productCode=" + id;
            }
        }
const validateComment = () => {
            const commentContents = document.getElementById('commentContents').value;
            if (commentContents === '') {
                document.getElementById('commentError').style.display = 'block';
                return false;
            }
            return true;
        }
const validateChildComment = () => {
            const commentContents = document.getElementById('ChildCommentContents').value;
            if (commentContents === '') {
                document.getElementById('ChildCommentError').style.display = 'block';
                return false;
            }
            return true;
        }
         const confirmDelete = (id) => {
                    const confirmDelete = confirm('정말 삭제하시겠습니까?');
                    if (confirmDelete) {
                        location.href = "/comment/delete?id=" + id;
                    }
                }
</script>
 <script th:inline="javascript">
     function priceUp(productCode) {
         $.ajax({
             url: "/products/priceUp",  // 가격인상 처리를 담당하는 서버의 URL
             method: "POST",
             data: { productCode: productCode },
             success: function(response) {

                 alert("가격이 인상되었습니다.");
                 location.reload();
             },
             error: function(xhr, status, error) {

                 console.log("Error: " + error);
                 alert("가격인상에 실패하였습니다. 다시 시도해주세요.");
             }
         });
     }
 </script>
 <script th:inline="javascript">
      function priceDown(productCode) {
          $.ajax({
              url: "/products/priceDown",  // 가격인상 처리를 담당하는 서버의 URL
              method: "POST",
              data: { productCode: productCode },
              success: function(response) {

                  alert("가격이 인하되었습니다.");
                  location.reload();
              },
              error: function(xhr, status, error) {

                  console.log("Error: " + error);
                  alert("가격인하에 실패하였습니다. 다시 시도해주세요.");
              }
          });
      }
  </script>
 <script th:inline="javascript">
     function updateOrInsertHeartlist(productCode) {
         var customerNumber = '${CustomerNumber}'; // 원하는 customerNumber 값을 설정해주세요.
         $.ajax({
             url: "/products/updateOrInsertHeartlist", // 프로시저를 호출하는 서버의 URL
             method: "POST",
             data: {
                 productCode: productCode,
                 customerNumber: customerNumber
             },
             success: function(response) {
                 alert("수강신청 완료!!");
                 location.reload();
             },
             error: function(xhr, status, error) {
                 console.log("Error: " + error);
                 alert("수강신청에 실패하였습니다. 다시 시도해주세요.");
             }
         });
     }
 </script>
</html>