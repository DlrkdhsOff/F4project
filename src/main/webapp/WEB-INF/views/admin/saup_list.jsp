<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.members-list {
   margin-top: -325px; /* 위쪽 간격 조정 */
   margin-bottom: 20px; /* 아래쪽 간격 조정 */
}

/* 브랜드 관리 문의사항 스타일 */
.brand-inquiry {
   margin-top: 40px; /* 위쪽 간격 조정 */
   margin-bottom: 40px; /* 아래쪽 간격 조정 */
}


   /* 브랜드 관리 문의사항 스타일 */
   .brand-inquiry {
      margin-top: 20px; /* 위쪽 간격을 20px로 조절 */
      margin-bottom: 40px; /* 아래쪽 간격은 그대로 둠 */
   }
</style>
<body>
   <div align="center" class="members-list">
         <table border="0" class="outline" width="60%">
            <tr>
               <th style="font-size: 20px;" colspan="10">사업자 문의현황</th>
            </tr>
            <tr>
               <th>아이디</th>
               <th>이름</th>
               <th>확인 여부</th>
            </tr>
            <c:if test="${empty list}">
               <tr>
                  <td colspan="4">등록된 사업 문의가 없습니다.</td>
               </tr>
            </c:if>
                <c:forEach var="list" items="${list}">
            <tr>
               <c:choose>
                <c:when test="${list.accept.equals('0')}">
                    <td><a style="text-decoration: none;" href="saup_accept.do?id=${list.id}">${list.id}</a></td>
                    <td>${list.name}</td>
                    <td>대기</td>
                </c:when>
                <c:when test="${list.accept.equals('1')}">
                    <td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>수락</td>
                </c:when>
                <c:when test="${list.accept.equals('2')}">
                    <td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>거절</td>
                </c:when>
            </c:choose>               
            </tr>
        </c:forEach>
         </table>
   </div>
</body>