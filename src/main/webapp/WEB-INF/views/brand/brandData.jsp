<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
       <tr>
         <th>브랜드명</th>
         <th>인테리어비용</th>
         <th>면적</th>
         <th>평당 인테리어비용</th>
         <th>면적단위평균매출금액</th>
         <th>평균매출금액</th>
         <th>보증금액</th>
         <th>교육금액</th>
         <th>기타금액</th>
         <th>가맹금액</th>
         <th>합계금액</th>
         <th>이미지</th>
      </tr>
	      <tr>  
	      <td>${brandName}</td>
	      <td>${interiorCost}</td>
	      <td>${storeArea}</td>
	      <td>${squareInteriorCost}</td>            
	      <td>${storeAreaSales}</td>
	      <td>${averageSales}</td>                
	      <td>${DepositAmount}</td>
	      <td>${education}</td>
	      <td>${OtherCosts}</td>
	      <td>${FranchiseAmount}</td>
	      <td>${totalAmount}</td>
	      <td>${img }</td>
    </table>
</body>
</html>