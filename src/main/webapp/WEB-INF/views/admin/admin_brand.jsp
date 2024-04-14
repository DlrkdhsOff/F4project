<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="admin.jsp"%> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
   font-family: Arial, sans-serif;
   background-color: #f4f4f4;
   margin: 0;
   padding: 0;
}

div.center {
   display: flex;
   align-items: center;
   justify-content: center;
   height: 100vh;
}

table {
   width: 60%;
   border-collapse: collapse;
   margin: auto;
}

table, th, td {
   border: 1px solid #ddd;
}

th, td {
   padding: 12px;
   text-align: left;
   font-weight: bold;
   margin-bottom: 20px;
   text-align: center; /* 가운데 정렬 */
}

th {
   background-color: #f2f2f2;
}

input[type="text"], input[type="file"], textarea {
   width: calc(100% - 20px);
   padding: 10px;
   margin: 8px 0;
   display: inline-block;
   border: 1px solid #ccc;
   box-sizing: border-box;
}

input[type="submit"], input[type="reset"] {
   background-color: #4CAF50;
   color: #fff;
   padding: 10px 15px;
   margin: 8px 0;
   border: none;
   cursor: pointer;
   border-radius: 3px;
}

input[type="submit"]:hover, input[type="reset"]:hover {
   background-color: #45a049;
}

form {
   margin-top: -340px; /* 필요한 만큼 조절하세요 */
}

/* 추가된 스타일 */
.outline {
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   border-radius: 8px;
   background-color: #fff;
}

caption {
   font-size: 24px;
   font-weight: bold;
   margin-bottom: 20px;
}

td[colspan="2"] {
   text-align: center;
}

.junmo {
   margin-top: -350px;
}
</style>
</head>

<script type="text/javascript">
   function checkDel(bnum, bimage) {
      var isDel = window.confirm("정말로 삭제하시겠습니까?")
      if (isDel) {
         document.delBrand.bnum.value = bnum
         document.delBrand.bimage.value = bimage
         document.delBrand.submit()
      }
   }
</script>

<body>
   <div align="center" class="junmo">
      <hr width="300">
      <h2>목록보기</h2>
      <hr width="300">
      <table border="1">
         <tr>
            <th>번호</th>
            <th>이미지</th>
            <th>삭제</th>
         </tr>
         <c:if test="${empty BrandList}">
            <tr>
               <td colspan="4">등록된 글이 없습니다.</td>
            </tr>
         </c:if>
         <c:set var="num" value="${number}" />
         <c:forEach var="dto" items="${BrandList}">
            <tr>
               <td align="center"><c:out value="${num}" /> <c:set var="num"
                     value="${num-1}" /></td>
               <td><a href="bunsukDetail.do?bnum=${dto.bnum}"
                  style="cursor: pointer;"> <img
                     src="<%= request.getContextPath() %>/files/${dto.bimage}"
                     width="80" height="80">
               </a></td>

               <td><a style="text-decoration: none;"
                  href="javascript:checkDel('${dto.bnum}','${dto.bimage}')">삭제</a></td>
            </tr>
         </c:forEach>
      </table>
      <br> <br>
      <div align="center">
         <c:if test="${count > 0}">
            <c:if test="${startPage > pageBlock}">
               <a href="admin_brandList.do?pageNum=${startPage-3}">[이전]</a>
            </c:if>
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <a style="text-decoration: none;" href="admin_brandList.do?pageNum=${i}">[${i}]</a>
            </c:forEach>
            <c:if test="${endPage < pageCount}">
               <a href="admin_brandList.do?pageNum=${startPage+3}">[다음]</a>
            </c:if>
         </c:if>
      </div>
   </div>
   <form name="delBrand" action="brand_delete.do" method="post">
      <input type="hidden" name="bnum"> <input type="hidden"
         name="bimage">
   </form>
</body>
</html>