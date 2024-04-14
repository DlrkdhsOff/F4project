<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="admin.jsp"%> 

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

    input[type="text"],
    input[type="file"],
    textarea {
        width: calc(100% - 20px);
        padding: 10px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 15px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        border-radius: 3px;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
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
    
</style>

<body>   
   
   <script type="text/javascript">

   function popUp(mnum) {
       // open("경로", "이름", "옵션")
       window.open("magazine_update.do?mnum=" + mnum, "Magazine Update", "width=800, height=800");
   }
   
   </script>
   
   <script type="text/javascript">
   function checkDel(mnum, mimage){
      var isDel = window.confirm("정말로 삭제하시겠습니까?")
      if (isDel){
         document.del.mnum.value = mnum
         document.del.mimage.value = mimage
         document.del.submit()   
      }
   }
</script>


<div align="center">
   <form name="f" action="magazine_ok.do" 
                     method="post" enctype="multipart/form-data">
      <table border="0" class="outline" width="60%">
          <tr>
                <th style="font-size:20px;" colspan="2">매거진</th>
            </tr>
         <tr>
            <th>제목</th>
            <td><input type="text" name="mtitle" class="box" required></td>
         </tr>
         <tr>
      
         <tr>
            <th>이미지</th>
            <td><input type="file" name="mimage" class="box" required></td>
         </tr>
         
         <tr>
            <th>내용</th>
            <td>
               <textarea name="content" maxlength="3000" rows="5" cols="30" required></textarea>
            </td>
         </tr>
         
         <tr>
            <th>이미지2</th>
            <td><input type="file" name="mimage2" class="box" required></td>
         </tr>
         
         <tr>
            <th>내용2</th>
            <td>
               <textarea name="content2" maxlength="3000" rows="5" cols="30" required></textarea>
            </td>
         </tr>

         <tr>
            <th align="center" colspan="2">
               <input type="submit" value="등록">
               <input type="reset" value="취소">
            </th>
         </tr>
      </table>   
   </form><br><br>
   
      <div align="center">
      <hr width="300">
      <h2>목록보기</h2>
      <hr width="300">
      <table border="1">
         <tr>
            <th>번호</th>
            <th>제목</th>
            <th>이미지</th>
            <th>수정 | 삭제</th>
         </tr>  
      <c:if test="${empty magazineList}">
         <tr>
            <td colspan="4">등록된 글이 없습니다.</td>
         </tr>
      </c:if>   
      <c:set var="num" value="${number}"/>
      <c:forEach var="dto" items="${magazineList}">
         <tr>
            <td align="center">
            <c:out value="${num}"/>
            <c:set var="num" value="${num-1}"/>  
            </td>
            <td><a style="text-decoration: none;" href="magzinedetail.do?mnum=${dto.mnum}">${dto.mtitle}</a></td>
            
            <td>
                <img src="<%= request.getContextPath() %>/files/${dto.mimage}" width="80" height="80">
            
            </td>
            <td>
               <a style="text-decoration: none;" href="javascript:void(0);" onclick="popUp(${dto.mnum})">수정</a> | 
               <a style="text-decoration: none;" href="javascript:checkDel('${dto.mnum}','${dto.mimage}')">삭제</a>
            </td>
         </tr>
      </c:forEach>
      </table><br><br>
   </div>
</div>

<div align="center">
      <c:if test="${count > 0}">
      <c:if test="${startPage > pageBlock}">
         <a href="magazine.do?pageNum=${startPage-3}">[이전]</a>
      </c:if>
      <c:forEach var="i" begin="${startPage}" end="${endPage}">
         <a style="text-decoration: none;" href="magazine.do?pageNum=${i}">[${i}]</a>
      </c:forEach>
      <c:if test="${endPage < pageCount}">
         <a href="magazine.do?pageNum=${startPage+3}">[다음]</a>
      </c:if>
   </c:if>
      </div>
      
      <br><br>

<form name="del" action="magazine_delete.do" method="post">
   <input type="hidden" name="mnum">
   <input type="hidden" name="mimage">
   <input type="hidden" name="mimage2">
</form>


</body>