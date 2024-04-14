<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
   margin-top: 20px; /* 위쪽 간격 조정 */
   margin-bottom: 20px; /* 아래쪽 간격 조정 */
}

/* 브랜드 관리 문의사항 스타일 */
.brand-inquiry {
   margin-top: 40px; /* 위쪽 간격 조정 */
   margin-bottom: 40px; /* 아래쪽 간격 조정 */
}
</style>
<body>
   
<div align="center" class="brand-inquiry">
   <c:forEach var="list" items="${list}">
        <form id="form${list.id}" action="saup_final.do">
         <table border="0" class="outline" width="60%">
            <tr>
               <th class="large-font" colspan="2">브랜드 관리 문의사항</th>
            </tr>
            <tr>
               <th>이름</th>
               <td><input type="text" id="name" name="name" class="box" value="${list.name}" readonly></td>
            </tr>
            <tr>
               <th>연락처</th>
               <td><input type="text" id="tel" name="tel" value="${list.tel}" readonly></td>
            </tr>
            <tr>
               <th>창업희망지역</th>
               <td><input type="text" id="place" name="place" value="${list.place}" readonly></td>
            </tr>
            <tr>
               <th>점포 보유</th>
               <td><input type="text" id="store" name="store" value="${list.store}" readonly></td>
            </tr>
            <tr>
               <th>브랜드 내용</th>
               <td><textarea id="memo" name="memo" maxlength="1000" rows="5" cols="30" readonly>${list.memo}</textarea></td>
            </tr>
           <tr>
            <td align="center" colspan="2">
                <input type="button" value="수락" onclick="reject_yes('${list.id}')">
                <input type="button" value="거절" onclick="reject_no('${list.id}')">
            </td>
        </tr>
        <!-- 폼의 나머지 부분... -->
        <input type="hidden" id="hiddenAccept${list.id}" name="accept">
    </form>
</c:forEach>

<script>
function reject_yes(id) {
    document.getElementById('hiddenAccept' + id).value = '1';
    document.getElementById('form' + id).submit();
}

function reject_no(id) {
    document.getElementById('hiddenAccept' + id).value = '2';
    document.getElementById('form' + id).submit();
}
</script>
</body>