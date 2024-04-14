<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>수정</title> 

<style>
body {
   font-family: Arial, sans-serif;
   background-color: #f4f4f4;
   margin: 0;
   padding: 0;
}

.center-container {
   display: flex;
   align-items: center;
   justify-content: center;
   height: auto;
}

table {
   width: 100%;
   border-collapse: collapse;
   margin: auto;
   background-color: #fff;
   box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   border-radius: 8px;
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

input[type="submit"], input[type="button"] {
   background-color: #4CAF50;
   color: #fff;
   padding: 10px 15px;
   margin: 8px 0;
   border: none;
   cursor: pointer;
   border-radius: 3px;
}

input[type="submit"]:hover, input[type="button"]:hover {
   background-color: #45a049;
}

form {
   margin-top: -40px; /* 필요한 만큼 조절하세요 */
}

#preview {
   margin-top: 10px;
}
</style>
</head>
<body>
   <div class="center-container">
      <form name="updateForm" action="bunsuk_update.do" method="post"
         enctype="multipart/form-data">
         <input type="hidden" name="bnum" value="${getBrand.bnum}"> <br>
         <br>
         <table align="center" border="0" class="outline">
            <tr>
               <th style="font-size: 25px;" colspan="2">수정</th>
            </tr>
            <tr>
               <th style="width: 30%">브랜드명</th>
               <td><input type="text" name="storeName" class="box"
                  value="${getBrand.storeName}" readOnly></td>
            </tr>
            <tr>
               <th>업종</th>
               <td><input type="text" name="tablename" class="box"
                  value="${getBrand.tablename}" readOnly></td>
            </tr>
            <tr>
               <th>사업자명</th>
               <td><input type="text" name="name" class="box"
                  value="${getBrand.name}" required></td>
            </tr>
            <tr>
               <th>전화번호</th>
               <td><input style="width: 30%;" type="text"
                  value="${getBrand.tel1}" name="tel1" maxlength="3"
                  autocomplete="off"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                  - <input style="width: 30%;" type="text" value="${getBrand.tel2}"
                  name="tel2" maxlength="4" autocomplete="off"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                  - <input style="width: 30%;" type="text" value="${getBrand.tel3}"
                  name="tel3" maxlength="4" autocomplete="off"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>

            <tr>
               <th>주소</th>
               <td><input type="text" name="address" class="box"
                  value="${getBrand.address}" required></td>
            </tr>
            <tr>
               <th>면적 (평 단위)</th>
               <td><input type="text" name="area" class="box"
                  value="${getBrand.area}" required
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
            </tr>
            <tr>
               <th>면적 단위 평균 매출금액 (천 단위)</th>
               <td><input type="text" name="storeAreaSales" class="box"
                  value="${getBrand.storeAreaSales}" required
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
            </tr>
            <tr>
               <th>평균 매출 금액 (천 단위)</th>
               <td><input type="text" name="averageSales" class="box"
                  value="${getBrand.averageSales}" required
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
            </tr>
            <tr>
               <th>평당 인테리어 비용 (천 단위)</th>
               <td><input type="text" name="squareInteriorCost" class="box"
                  value="${getBrand.squareInteriorCost}" required
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
            </tr>
            <tr>
               <th>인테리어 비용 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.interiorCost}"
                     pattern="#,###" var="formattedInteriorCost" /> <input
                  type="text" name="interiorCost" class="box" required
                  value="${getBrand.interiorCost}" onchange="Total()"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>
            <tr>
               <th>보증금액 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.depositAmount}"
                     pattern="#,###" var="formatteddepositAmount" /> <input
                  type="text" name="depositAmount" class="box" required
                  value="${getBrand.depositAmount}" onchange="Total()"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>
            <tr>
               <th>교육금액 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.education}"
                     pattern="#,###" var="formattededucation" /> <input type="text"
                  name="education" class="box" required
                  value="${getBrand.education}" onchange="Total()"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>
            <tr>
               <th>기타금액 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.otherCosts}"
                     pattern="#,###" var="formattedotherCosts" /> <input type="text"
                  name="otherCosts" class="box" required
                  value="${getBrand.otherCosts}" onchange="Total()"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>
            <tr>
               <th>가맹 금액 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.franchiseAmount}"
                     pattern="#,###" var="formattedotherCosts" /> <input type="text"
                  name="franchiseAmount" class="box" required
                  value="${getBrand.franchiseAmount}" onchange="Total()"
                  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
               </td>
            </tr>
            <tr>
               <th>합계 (천 단위)</th>
               <td><fmt:formatNumber value="${getBrand.total}"
                     pattern="#,###" var="formattedtotal" /> <input type="text"
                  name="total" class="box" value="${getBrand.total}" readOnly>
               </td>
            </tr>
            <tr>
               <th>현재 이미지</th>
               <td><img
                  src="<%= request.getContextPath() %>/files/${getBrand.bimage}"
                  required width="100" height="100"> <input type="hidden"
                  name="bimage2" value="${getBrand.bimage}"></td>
            </tr>
            <tr>
               <th>수정할 이미지</th>
               <td><img id="preview" src="" width="100" height="100"> <input
                  type="file" name="bimage" class="box"
                  onchange="previewImage(this);"></td>
            </tr>

            <tr>
               <th align="center" colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;
                  <input type="button" value="닫기" onclick="closeWindow()"></th>
            </tr>
         </table>
      </form>
   </div>



   <script>
      function previewImage(input) {
         var preview = document.getElementById('preview');
         var file = input.[0];
         var reader = new FileReader();

         reader.onloadend = function() {
            preview.src = reader.result;
         }

         if (file) {
            reader.readAsDataURL(file);
         } else {
            preview.src = "";
         }
      }

      function closeWindow() {
         window.close();
      }
      function Total() {
         // 각 입력 필드에서 값 가져오기
         var interiorCost = parseFloat(document
               .getElementsByName('interiorCost')[0].value) || 0;
         var depositAmount = parseFloat(document
               .getElementsByName('depositAmount')[0].value) || 0;
         var education = parseFloat(document.getElementsByName('education')[0].value) || 0;
         var otherCosts = parseFloat(document
               .getElementsByName('otherCosts')[0].value) || 0;
         var franchiseAmount = parseFloat(document
               .getElementsByName('franchiseAmount')[0].value) || 0;

         // 합계 계산
         var total = interiorCost + depositAmount + education + otherCosts
               + franchiseAmount;

         // 합계를 합계 필드에 설정
         document.getElementsByName('total')[0].value = total;
      }
   </script>

</body>
</html>