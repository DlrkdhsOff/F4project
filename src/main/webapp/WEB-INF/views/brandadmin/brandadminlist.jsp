<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="brandadmin.jsp"%>
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
	width: 67%;
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

form {
	margin-top: -340px; /* 필요한 만큼 조절하세요 */
	margin-left: 150px;
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

th {
	padding: 1px;
	text-align: left;
	font-weight: bold;
	margin-bottom: 20px;
	text-align: center;
}

td {
	padding: 5px;
	text-align: left;
	font-weight: initial;
	margin-bottom: 20px;
	text-align: center;
}

.flex-container {
	display: flex;
	justify-content: space-around; /* 요소들 간의 간격을 조절합니다 */
}

table {
	width: 100%; /* 테이블의 너비를 100%로 설정 */
}
</style>
<body>
	<div class="flex-container">
		<div align="center">
			<form name="costf" action="brandadminlist.do" method="post"
				enctype="multipart/form-data">
				<table border="0" class="outline" width="100%">
					<tr>
						<td colspan="10">
							<h5>예상 창업 비용</h5>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault1" id="flexRadioDefault1" value="5천만원 미만" onclick="cost(costf.flexRadioDefault1.value)"
									${price eq '5천만원 미만' ? 'checked' : ''}> <label class="form-check-label"
									for="flexRadioDefault1"> 5천만원 미만 </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault2" id="flexRadioDefault2" value="5천만원 이상" onclick="cost(costf.flexRadioDefault2.value)" ${price eq '5천만원 이상' ? 'checked' : ''}>
								<label class="form-check-label" for="flexRadioDefault2">
									5천만원 이상 </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault3" id="flexRadioDefault3" value="1억 미만" onclick="cost(costf.flexRadioDefault3.value)" ${price eq '1억 미만' ? 'checked' : ''}>
								<label class="form-check-label" for="flexRadioDefault3">
									1억 미만 </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault4" id="flexRadioDefault4" value="1억 이상" onclick="cost(costf.flexRadioDefault4.value)" ${price eq '1억 이상' ? 'checked' : ''}> 
								<label class="form-check-label" for="flexRadioDefault4">
									1억 이상 </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault5" id="flexRadioDefault5" value="1억 5천 이상" onclick="cost(costf.flexRadioDefault5.value)" ${price eq '1억 5천 이상' ? 'checked' : ''}>
								<label class="form-check-label" for="flexRadioDefault5">
									1억 5천 이상 </label>
							</div>
						</td>
					</tr>
					<tr>
						<th colspan="6" style="font-size: 20px;" colspan="10">예비 창업
							목록 (<span id="selectedCost">5천만원 이상</span>)
						</th>

					</tr>
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>가입 날짜</th>
						<th>예상창업비용</th>
					</tr>
					<c:if test="${empty priceList}">
						<tr>
							<td colspan="6">등록된 카테고리가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach var="dto" items="${priceList}">
						<tr>
							<td>${dto.id}</td>
							<td>${dto.name}</td>
							<td>${dto.email1}@${dto.email2}</td>
							<td>${dto.tel1}-${dto.tel2}-${dto.tel3}</td>
							<td>${dto.joindate}</td>
							<td>${dto.price}</td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>
	</div>

	<script>
		// 라디오 버튼 클릭 시 선택된 비용을 표시하는 함수
		document.querySelectorAll('input[type="radio"]').forEach((radio) => {
			radio.addEventListener('change', function() {
				document.getElementById('selectedCost').innerText = this.nextElementSibling.innerText;
			});
		});
		
		function cost(price){
			location.href="brandadminlist.do?price="+price;
			return
		}
	</script>
</body>