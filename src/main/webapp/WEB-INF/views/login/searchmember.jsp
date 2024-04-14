<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
h2.subtitle1 {
	padding: 4px 0 4px !important;
	color: #282828 !important;
	font-size: 30px !important;
	font-weight: normal !important;
	text-align: center !important; 
	background-color: #e9ecef !important;
	width: 410px !important;
}
</style>


<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/signin.css">
<title>회원정보찾기</title>
</head>
<body>
	<script>
		function history_back() {
			history.back();
		}
	</script>

	<div data-v-581bdaec="" class="help_area">
		<div data-v-581bdaec="">

			<c:if test="${param.mode == 'id'}">
				<h2 data-v-581bdaec="" class="subtitle1">아이디 찾기</h2>
				
				<div data-v-581bdaec="" class="help_notice">
					<p data-v-581bdaec="" class="notice_txt">
						가입 시 등록하신 이름과 이메일을 입력하시면,<br data-v-581bdaec="">아이디를
						알려드립니다.
					</p>
				</div>
			</c:if>

			<c:if test="${param.mode != 'id'}">
				<h2 data-v-581bdaec="" class="subtitle1">비밀번호 찾기</h2>
				
				<div data-v-581bdaec="" class="help_notice">
					<p data-v-581bdaec="" class="notice_txt">
						가입 시 등록하신 이름, 이메일과 아이디을 입력하시면,<br data-v-581bdaec="">비밀번호를
						알려드립니다.
					</p>
				</div>
			</c:if>

			<form name="f" action="searchMember.do" method="post"
				onsubmit="return searchMember('${param.mode}')">

				<div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
					<h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">이름</h3>
					<div data-v-5ee806c3="" class="input_item">
						<input data-v-5ee806c3="" type="text" name="name"
							placeholder="가입하신 이름" autocomplete="off" class="input_txt">
					</div>
				</div>

				<div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
					<h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">이메일</h3>
					<div data-v-5ee806c3="" class="input_item">
						<input data-v-5ee806c3="" style="width: 40%; float: left;"
							type="text" name="email1" autocomplete="off"
							class="input_txt"> @ <input data-v-5ee806c3=""
							style="width: 40%;" type="text" name="email2"
							autocomplete="off" class="input_txt">
					</div>
				</div>

				<c:if test="${param.mode == 'pw'}">
					<div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
						<h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">아이디</h3>
						<div data-v-5ee806c3="" class="input_item">
							<input data-v-5ee806c3="" type="text" name="id"
								placeholder="가입하신 아이디" autocomplete="off" class="input_txt">
						</div>
					</div>
				</c:if>

				<div align="center" data-v-581bdaec="" class="help_btn_box">
					<button data-v-0a6aebaa="" data-v-581bdaec=""
						style="width: 40%; float: left; cursor: pointer;" type="submit"
						class="btn full solid disabled">찾기</button>
					&nbsp;&nbsp;&nbsp;
					<button data-v-0a6aebaa="" data-v-581bdaec=""
						style="width: 40%; cursor: pointer;" type="reset"
						class="btn full solid disabled">재입력</button>
				</div>

			</form>
		</div>
	</div>

</body>
</html>