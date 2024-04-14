<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#hd .logo img {
   margin: 20px !important;
   height: 78px !important;
}

#hd .gnb li:last-child {
   margin-left: 0 !important;
   padding-right: 0
}
</style>
<html>
<head>

<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" type="text/css" href="/css/listt.css">
<link rel="stylesheet" type="text/css" href="/css/listtt.css">

<title>F4</title>
<link rel="icon" href="https://i.ibb.co/Wxv3M0D/son01.jpg"
   type="image/jpeg">
</head>

<style>
#hd .gnb li:last-child {
   margin-left: 0 !important;
   padding-right: 0
}

/*  스크롤 옆에 사이드 리스트 */
#quick {
   position: fixed;
   width: 75px;
   background-color: rgba(0, 0, 0, 0.8);
   right: 0;
   top: 50%;
   transform: translate(0, -50%);
   z-index: 500;
   text-align: center;
}

#quick ul li a {
   font-size: 17px;
   color: #fff;
   line-height: 23px;
   padding: 15px 5px;
   display: block;
   /* position: relative; */
}

#quick ul li a:after {
   content: '';
   width: 80%;
   height: 1px;
   background-color: #737373;
   top: 0;
   left: 50%;
   transform: translate(-50%, 0);
   position:  relative;
           left:  1000px;
           top:  50px;
}

img {
   border: none;
   vertical-align: middle;
   height: auto !important;
   max-width: 100%;
}

/*  스크롤 옆에 사이드 리스트 */
</style>

<script type="text/javascript">
	function membership() {
		window.open("dong2.do", "membership", "width=700, height=700")
	}
</script>

<c:set var="isLogin" value="${false}" />
<c:if test="${!empty loginMember}">
	<c:set var="isLogin" value="${true}" />
</c:if>

<c:set var="isSaup" value="${false}" />
<c:if test="${!empty saup}">
	<c:set var="isSaup" value="${true}" />
</c:if>

<body>
	<aside id="quick" float="left">
		<ul>
			<li><a href="https://www.instagram.com/f4.riders/"
				target="_blank"> <img src="https://i.ibb.co/TgKPmVM/insta.png"
					title="">
			</a></li>
			<li><a href="main.do" onclick="scrollToTop()"> <i
					class="fas fa-arrow-up"></i> <span class="button-text">†</span>
			</a></li>
		</ul>
	</aside>

	<script>
		function scrollToTop() {
			window.scrollTo({
				top : 0,
				behavior : 'smooth'
			});
		}

		function scrollToBottom() {
			window.scrollTo({
				top : document.body.scrollHeight,
				behavior : 'smooth'
			});
		}

		function pay() {
			window.open("pay.do", "pay", "width=700, height=700")
		}
		
		function beforeMypage() {
			window.open("beforeMypage.do", "pay", "width=500, height=500")
		}
		
		 function reAccept(){
		      window.open("resaup.do", "saup", "width=700, height=700")
		   }
	</script>
	<div id="hd_01"></div>
	<div id="wrap">
		<div style="line-height: 118px;" id="hd">

			<div class="area">
				<div class="logo">

					<a href="main.do"><img
						src="https://i.ibb.co/16TMG7T/icon-deal.png"></a>
				</div>
				<div class="gnb">
					<ul>
						<li><a href="main.do">HOME</a></li>
						<li><p>/</p>
						<li>
						<li><a href="sangkwon.do">상권정보</a></li>
						<li><p>/</p>
						<li><a href="brand.do">브랜드 정보</a></li>
						<li><p>/</p>
						<li><a href="magazineform.do">매거진</a></li>
						<li><p>/</p>
						<li><a href="ranking_do">랭킹</a></li>
						<li><p>/</p>
							<div class="logo">
								<c:if test="${isLogin}">
									<c:if test="${loginMember.id != 'admin'}">
										<li><a onclick="beforeMypage()"> <img
												src="https://i.ibb.co/6FFptgg/loginimage01.png"
												style="height: 45px !important;" alt="loginimage">
										</a></li>
									</c:if>
									<li><a href="logout.do" class="btn1">로그아웃 </a></li>
									<c:if test="${loginMember.id != 'admin'}">
										<c:if test="${isSaup}">
											<c:if test="${accept != '2'}">
												<li><a onclick="pay()" style="cursor: pointer;"
													class="btn1">결제하기</a></li>
												<li class="nav-item"><a href="brandadmin.do"><img
														width="30" height="30"
														src="data:image/png;base64,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"></a>
												</li>
											</c:if>
										</c:if>
										<c:if test="${accept == '2'}">
											<li><a onclick="reAccept()" style="cursor: pointer;"
												class="btn1">재인증</a></li>
										</c:if>
										<c:if test="${!isSaup}">
											<!-- <li><a href="saup.do"
                              style="cursor: pointer;" class="btn1">브랜드 관리자 로그인</a></li> -->
										</c:if>
									</c:if>
								</c:if>
								<c:if test="${!isLogin}">
									<li><a href="login.do" class="btn1">로그인</a></li>
									<li><a onClick="javascript:membership()"
										style="cursor: pointer;" class="btn1">회원가입</a></li>
								</c:if>
								<c:if test="${loginId == 'admin'}">
									<hr class="my-3">
									<li class="nav-item"><a href="adminn.do"><img
											width="30" height="30"
											src="data:image/png;base64,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"></a>
									</li>
								</c:if>
					</ul>
				</div>
			</div>

		</div>