<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#sub.start .inquiry {
	
}

#sub.start .inquiry>div {
	border-top: 1px solid #a7a7a7;
}

#sub.start .inquiry h5 {
	font-size: 36px;
	text-align: center;
	padding: 100px 0 25px;
	color: #707070;
	font-weight: 700;
}

#sub.start .inquiry h5 b {
	color: #4d4c4c;
}

#sub.start .inquiry .div {
	text-align: center;
}

#sub.start .inquiry .div i {
	font-size: 18px;
	color: #707070;
	font-weight: 500;
	font-style: normal;
	padding: 0 0 0 10px;
	position: relative;
}

#sub.start .inquiry .div i:after {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translate(0, -50%);
	width: 4px;
	height: 4px;
	background-color: #e60013;
	border-radius: 50%;
	content: '';
	display: block;
}

#sub.start .inquiry form button, #sub.start .inquiry form textarea, #sub.start .inquiry form select,
	#sub.start .inquiry form input[type=text] {
	width: 100%;
	height: 56px;
	line-height: 20px;
	box-sizing: border-box;
	border: 1px solid #a7a7a7;
	padding: 15px;
}

#sub.start .inquiry form input[type=text].readonly {
	background-color: #f3f3f3;
}

#sub.start .inquiry form textarea {
	height: 240px;
	line-height: normal;
}

#sub.start .inquiry form {
	text-align: left;
	padding: 40px 0 100px;
}

#sub.start .inquiry form ul {
	overflow: hidden;
	margin: -7px 0;
}

#sub.start .inquiry form ul li {
	float: left;
	width: 80%;
	position: relative;
	min-height: 50px;
	line-height: 50px;
	font-size: 22px;
	color: #707070;
	margin: 7px 0;
	box-sizing: border-box;
}

#sub.start .inquiry form ul li.required:after {
	content: ' ';
	position: absolute;
	top: 50%;
	left: 30px;
	transform: translate(0, -50%);
	width: 4px;
	height: 4px;
	border-radius: 50%;
	background-color: #e60013;
	display: inline-block;
}

#sub.start .inquiry form ul li.txt {
	width: 20%;
	text-indent: 45px;
}

#sub.start .inquiry form ul li.input {
	width: 30%;
}

#sub.start .inquiry form ul li input[type="radio"] {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translate(0, -50%);
	width: 1px;
	height: 1px;
	clip: rect(0, 0, 0, 0);
}

#sub.start .inquiry form ul li input[type="radio"]+label {
	font-size: 20px;
	font-weight: 500;
	color: #3e3e3e;
	display: block;
	width: 50%;
	float: left;
	text-align: center;
	border: 1px solid #cdcdcd;
	box-sizing: border-box;
}

#sub.start .inquiry form ul li input[type="radio"]:checked+label {
	background-color: #818181;
	color: #fff;
}

#sub.start .inquiry form ul li.agree, #sub.start .inquiry form ul li.submit
	{
	
}

#sub.start .inquiry form ul li.submit button, #sub.start .inquiry form ul li.agree div
	{
	height: 70px;
	line-height: 70px;
	box-sizing: border-box;
	width: 96%;
	border: 1px solid #8e8e8e;
	overflow: hidden;
	position: relative;
}

#sub.start .inquiry form ul li.agree div input[type=checkbox] {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translate(0, -50%);
	width: 1px;
	height: 1px;
	clip: rect(0, 0, 0, 0);
}

#sub.start .inquiry form ul li.agree div label {
	background-image: url('../img/header/checkbox_off.png');
	background-position: 15px center;
	background-repeat: no-repeat;
	display: block;
	padding: 0 0 0 50px;
	font-size: 20px;
}

#sub.start .inquiry form ul li.agree div input[type=checkbox]:checked+label
	{
	background-image: url('../img/header/checkbox_on.png');
}

#sub.start .inquiry form ul li.agree div button {
	position: absolute;
	top: 50%;
	right: 15px;
	transform: translate(0, -50%);
	margin: 0;
	line-height: 40px;
	height: 40px;
	padding: 0;
	width: 120px;
	text-align: center;
	color: #fff;
	font-size: 14px;
	background-color: #595959;
}

#sub.start .inquiry form ul li.submit {
	text-align: right;
	text-indent: 0 !important;
}

#sub.start .inquiry form ul li.submit button {
	line-height: inherit;
	border: 1px solid #8e8e8e;
	background-color: #f8b62d;
	font-size: 30px;
	color: #fff;
	padding: 0;
	margin: 0;
	width: 100%;
}

#sub.start .inquiry form ul li.agree, #sub.start .inquiry form ul li.submit
	{
	padding: 25px 0 0;
}

#sub.start .inquiry form ul li.space {
	width: 100%;
	height: 1px;
	min-height: 1px;
	max-height: 1px;
	margin: 0;
}

#sub.start .inquiry form ul li.address {
	display: none;
}

#sub.start .inquiry form ul li.address>div {
	width: 49.5%;
}

#sub.start .inquiry form ul li.address>div input {
	width: 60%;
}

#sub.start .inquiry form ul li.address>div button {
	width: 40%;
	background-color: #aeaeae;
	font-size: 20px;
	color: #fff;
}

#sub.start .inquiry form ul li.address>input {
	width: 49.5%;
}

#sub.start .inquiry form ul li.address>br {
	display: none;
}

#sub.start .inquiry form ul li.address>input[name=address02] {
	margin: 0 0 0 1%;
}

#sub.start .inquiry form ul li.address #post_wrap {
	display: none;
	border: 1px solid #a7a7a7;
	width: 100%;
	height: 300px;
	margin: 5px 0;
	position: relative;
	box-sizing: border-box;
}

#sub.start .inquiry form ul li.address #post_wrap div, #sub.start .inquiry form ul li.address #post_wrap iframe
	{
	min-width: 0 !important;
}

#sub.start .inquiry form ul li.address #btnFoldWrap {
	cursor: pointer;
	position: absolute;
	right: 0px;
	top: -1px;
	z-index: 1;
}

.sub_wrap {
	width: 80%; /* 폼 요소들이 차지하는 가로 폭을 조정할 수 있는 값 */
	margin: 0 auto; /* 좌우 마진을 자동으로 조정하여 가운데 정렬합니다. */
	text-align: left; /* 내부 요소들은 다시 좌측 정렬되도록 설정합니다. */
}

.inquiry form ul li.submit {
	text-align: center; /* 버튼을 가운데 정렬합니다. */
}

.inquiry form ul li.submit button {
	margin: 0 auto; /* 버튼을 수평으로 가운데 정렬합니다. */
}
</style>

</head>
<body>

	<section id="sub" class="start nav">
		<article class="compete scroll_contents" id="compete">
			<article class="inquiry scroll_contents" id="inquiry">
				<div class="container" align="center">
					<div class="sub_wrap">
						<h5>
							브랜드 관리자 <b>가입</b>
						</h5>
						<div class="div">
							<i><span></span>표시는 필수 입력사항입니다.</i>
						</div>
						<form method="post" action="resaup_ok.do">
							<ul>
								<!-- 아이디 입력 -->
								<li class="txt required">아이디</li>
								<li class="input"><input type="text" id="id" name="id"
									value="${id}" readonly></li>

								<!-- 이름 입력 -->
								<li class="txt required">이름</li>
								<li class="input"><input type="text" id="name" name="name"
									value="${name}" readonly></li>

								<!-- 연락처 입력 -->
								<li class="txt required">연락처</li>
								<li class="input"><input type="text" id="tel" name="tel"
									value="${tel}" readonly></li>

								<!-- 창업희망지역 선택 -->
								<li class="txt required">창업희망지역</li>
								<li class="input"><select id="place" name="place" required>
										<option value="">서울시(전체)</option>
										<option value="종로구">종로구</option>
										<option value="중구">중구</option>
										<option value="용산구">용산구</option>
										<option value="성동구">성동구</option>
										<option value="광진구">광진구</option>
										<option value="동대문구">동대문구</option>
										<option value="중랑구">중랑구</option>
										<option value="성북구">성북구</option>
										<option value="강북구">강북구</option>
										<option value="도봉구">도봉구</option>
										<option value="노원구">노원구</option>
										<option value="은평구">은평구</option>
										<option value="서대문구">서대문구</option>
										<option value="마포구">마포구</option>
										<option value="양천구">양천구</option>
										<option value="강서구">강서구</option>
										<option value="구로구">구로구</option>
										<option value="금천구">금천구</option>
										<option value="영등포구">영등포구</option>
										<option value="동작구">동작구</option>
										<option value="관악구">관악구</option>
										<option value="서초구">서초구</option>
										<option value="강남구">강남구</option>
										<option value="송파구">송파구</option>
										<option value="강동구">강동구</option>
								</select></li>

								<!-- 점포보유 여부 선택 -->
								<li class="txt required">점포보유</li>
								<li class="input">
									<div>
										<input type="radio" name="store" value="없음"
											onclick="change_store(this.value)" id="no" checked="">
										<label for="no">없음</label> <input type="radio" name="store"
											value="있음" onclick="change_store(this.value)" id="yes">
										<label for="yes">있음</label>
									</div>
								</li>

								<!-- 문의내용 입력 -->
								<li class="txt">문의내용</li>
								<li><textarea id="memo" name="memo" required></textarea></li>

								<!-- 버튼 -->
								<li class="confirm"><input type="submit" value="전송">
								</li>
							</ul>
						</form>
					</div>
				</div>
			</article>
		</article>
	</section>
</body>
</html>
