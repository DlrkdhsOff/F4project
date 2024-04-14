<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<html lang="ko" data-bs-theme="auto">
<head>
<script src="/docs/5.3/assets/js/color-modes.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="generator" content="Hugo 0.118.2">
<title>마이페이지</title>

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
   crossorigin="anonymous">

<!-- Favicons -->

<meta name="theme-color" content="#712cf9">


<style>
.container {
   padding-top: 100px; /* top.jsp를 인클루드할 때 가려지는 부분을 보여줄 수 있도록 여유를 둡니다. */
}

.bd-placeholder-img {
   font-size: 1.125rem;
   text-anchor: middle;
   -webkit-user-select: none;
   -moz-user-select: none;
   user-select: none;
}

@media ( min-width : 768px) {
   .bd-placeholder-img-lg {
      font-size: 3.5rem;
   }
}

.b-example-divider {
   width: 100%;
   height: 3rem;
   background-color: rgba(0, 0, 0, .1);
   border: solid rgba(0, 0, 0, .15);
   border-width: 1px 0;
   box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
      rgba(0, 0, 0, .15);
}

.b-example-vr {
   flex-shrink: 0;
   width: 1.5rem;
   height: 100vh;
}

.bi {
   vertical-align: -.125em;
   fill: currentColor;
}

.nav-scroller {
   position: relative;
   z-index: 2;
   height: 2.75rem;
   overflow-y: hidden;
}

.nav-scroller .nav {
   display: flex;
   flex-wrap: nowrap;
   padding-bottom: 1rem;
   margin-top: -1px;
   overflow-x: auto;
   text-align: center;
   white-space: nowrap;
   -webkit-overflow-scrolling: touch;
}

.btn-bd-primary { -
   -bd-violet-bg: #712cf9; -
   -bd-violet-rgb: 112.520718, 44.062154, 249.437846; -
   -bs-btn-font-weight: 600; -
   -bs-btn-color: var(- -bs-white); -
   -bs-btn-bg: var(- -bd-violet-bg); -
   -bs-btn-border-color: var(- -bd-violet-bg); -
   -bs-btn-hover-color: var(- -bs-white); -
   -bs-btn-hover-bg: #6528e0; -
   -bs-btn-hover-border-color: #6528e0; -
   -bs-btn-focus-shadow-rgb: var(- -bd-violet-rgb); -
   -bs-btn-active-color: var(- -bs-btn-hover-color); -
   -bs-btn-active-bg: #5a23c8; -
   -bs-btn-active-border-color: #5a23c8;
}

.bd-mode-toggle {
   z-index: 1500;
}

.bd-mode-toggle .dropdown-menu .active .bi {
   display: block !important;
}
</style>
</head>
<body class="bg-body-tertiary">
   <div class="container mt-5" align="center">
      <main>
      <div class="w-50 p-3 text-center">
         <h3>M Y P A G E</h3>
         <header class="d-flex justify-content-center py-3">

   <ul class="nav nav-pills">
               <li class="nav-item"><div style="font-size:25px" aria-current="page">계정 정보</div></li>
            </ul>
               
         </header>
         <script>
         //버튼 누르면  활성화 누르지 않는건 비활성화
         //토글 버튼
         /* function toggleButton(buttonIndex) {
              const buttons = document.querySelectorAll('.nav-link'); // 해당 클래스의 모든 버튼을 선택합니다.
              
              buttons.forEach((button, index) => {
                if (index === buttonIndex) {
                  button.classList.add('active'); // 클릭한 버튼에 active 클래스를 추가합니다.
                } else {
                  button.classList.remove('active'); // 다른 버튼들은 active 클래스를 제거합니다.
                }
              });
            } */

         </script>
         <hr class="my-4">
         <form class="needs-validation" name="uf" action="admin_updateMember.do" onsubmit="return update()">
            <input type="hidden" name="id" value="${getMember.id}"/>
            <div class="row g-3">
               <div class="col-12 my-3 pt-3">
                  <style>

/* 기존 스타일에 추가된 부분 */
.nav-pills .nav-link {
   padding: 0.5rem 1rem; /* 버튼 크기를 늘리려면 여기의 패딩 값을 조정합니다. */
   font-size: 1.2rem; /* 버튼 안의 텍스트 크기를 조정합니다. */
}

.btn-primary {
   padding: 1rem 2rem; /* 버튼 크기를 늘리려면 여기의 패딩 값을 조정합니다. */
   font-size: 1.5rem; /* 버튼 안의 텍스트 크기를 조정합니다. */
}

body {
   border-color: white; /* 보더 그라운드 컬러를 하얀색으로 설정 */
   color: gray; /* 폰트 컬러를 회색으로 설정 */
}

h3 {
   font-size: 4.75rem;
}

.form-control {
   display: block;
   width: 105% !important;
   padding: 8px;
   font-size: 16px;
}

.form-group {
   display: flex;
   align-items: center;
   font-size: 18px;
}

.form-group label {
   margin-right: 20px;
   width: 90px;
   text-align: right;
}

.form-group .disabled-field {
   flex-grow: 1;
   margin-right: 15px;
}

.form-group button {
   align-self: flex-end;
}

.w-100 {
   width: 32% !important;
}
/* 기존 CSS 코드에 추가할 부분 */
.nav-link {
   text-decoration: none !important; /* 링크의 밑줄을 제거합니다. */
}

/* 버튼에 호버 시 스타일 */
.nav-link:hover {
   /* 여기에 원하는 호버 시 스타일을 추가할 수 있어요. */
   
}
</style>
                  <div class="mb-3 form-group">
                  
                     <label for="disabledTextInput">비밀번호</label>
                     <fieldset class="disabled-field">
                        <input type="text" id="disabledTextpw" name="pw" value="${getMember.pw}" class="form-control"
                           placeholder="Disabled input" disabled>
                     </fieldset>
                     <button type="button" class="btn btn-secondary"
                        onclick="enableInput1()">수정</button>
                  </div>
                  <br>
                  
                


                  <br>
                  <!--  수정버튼이 디세이블 활성화 시키지 않는 풩션 -->
                  <script>
                  function enableInput1() {
                      var inputField = document
                            .getElementById('disabledTextpw');
                      
                      
                      inputField.disabled = false;
                      inputField.focus();
                      
                   }
                  
                  function update(){
                     var inputField = document.getElementById('disabledTextpw');
                  
                  if(inputField.disabled){
                     alert("수정 후 클릭이 가능합니다.")
                     return false
                  }
                  return true
                  
                  }
                
                  
                  </script>
                  <!--  수정버튼이 디세이블 활성화 시키지 않는 풩션 -->
               </div>
            </div>
            <div class="row gy-3"></div>
            <hr class="my-4">
            <br> <br>
            <button class="w-100 btn btn-primary btn-lg" type="submit">수정 완료</button>
            <a class="w-100 btn btn-primary btn-lg" onClick="history.back(-1)">돌아가기</a>
         </form>
      </div>
      
      </main>
   </div>

  <!--  <div class="my-5 pt-5 text-body-secondary text-center text-small">
      <ul class="list-inline">
         <li class="list-inline-item"><button type="button" onClick="history.back(-1)">돌아가기</button></li>
      </ul>
   </div> -->

   </div>
   
   <script type="text/javascript">
         function mdelete(){
         var isDel = window.confirm("정말로 탈퇴 하시겠습니까?")
         if (isDel){
            location.href="delete.do"
         }
         }
   </script>
   
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"></script>

   <script src="checkout.js"></script>
</body>
</html>