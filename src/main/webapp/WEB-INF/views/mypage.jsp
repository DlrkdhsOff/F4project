<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="top2.jsp"%>
<html lang="ko" data-bs-theme="auto">
<head>

<style>
.d_form.mini {
    width: 7em;
}

.d_form {
    margin: .2em 0;
    font-size: 1em;
    padding: .5em;
    border: 1px solid #ccc;
    border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
    box-shadow: inset 0.1em 0.1em 0.15em rgba(0,0,0,.1);
    vertical-align: middle;
    line-height: 1.25em;
    outline: 0;
    width: 20em;
}

.d_form.large {
}

.d_btn {
    display: inline-block;
    padding: .5em 1em;
    margin: .4em .15em;
    border: 1px solid #ccc;
    border-color: #dbdbdb #d2d2d2 #b2b2b2 #d2d2d3;
    cursor: pointer;
    color: #464646;
    border-radius: .2em;
    vertical-align: middle;
    font-size: 1em;
    line-height: 1.25em;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#fff),to(#f2f2f2));
    background-image: -moz-linear-gradient(top,#fff,#f2f2f2);
    background-image: -o-gradient(top,#fff,#f2f2f2);
    background-image: linear-gradient(top,#fff,#f2f2f2);
}
</style>

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
   width: 103% !important;
   padding: 8px;
   font-size: 12px;
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

.col-sm-6 {
   width: 48% !important;
}
</style>

</head>
<body>


<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
function validatePassword() {
    var password = document.getElementById('pw').value;
    var passwordMessage = document.getElementById('passwordMessage');
    
    var passwordSC = /^(?=.*[!@#$%^&*])[A-Za-z\d@$!%*#?&/]{8,}$/;

    if (password === '') {
        passwordMessage.textContent = '';
    } else if (!passwordSC.test(password)) {
        passwordMessage.textContent = '비밀번호는 8자리 이상이어야 하며, 특수문자를 하나 이상 포함해야 합니다.';
        return false;
    } else {
        passwordMessage.textContent = '';
    }

    return true;
}
</script>

   <script>
   // 비밀번호 표시 여부를 전환하는 함수
   function togglePassword() {
     var passwordInput = document.getElementById('pw');
     var image = document.getElementById('check'); // 이미지 요소 추가
     
     if (passwordInput.type === "password") {
       passwordInput.type = "text";
       image.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iH2ZkkJjITyub5sugEjUVvKwL39ah8uEtUNwqz5OVQXrbInfnXWEKi9J_V0cAeshF0A&usqp=CAU";
       image.width = 34;
       image.height = 34;
     } else { 
       passwordInput.type = "password";
       image.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RxtQjxVoAA0eMhyRc9t5Uwt5WulTBRcnHGquZiw-CR1d000GQ4uW1cFkuhDhU9PLjpw&usqp=CAU";
       image.width = 35;
       image.height = 35;
     }
   }
 </script>

   <div class="container mt-5" align="center">
      <hr class="my-2">
      <main>
      <div class="w-50 p-3 text-center">
         <h3>M Y P A G E</h3>
         <br> <br>
         <div class="row">
            <div class="col">

               <div class="tabs tabs-bottom tabs-center tabs-simple">
                  <ul class="nav nav-pills" role="tablist">
                     <br>
                     <br>
                     <br>
                     <br>
                     <li class="nav-item active" role="presentation"><a
                        class="nav-link active" href="#tabsNavigationSimple1"
                        data-bs-toggle="tab" aria-selected="true" role="tab">계정 정보</a></li>
                     <li class="nav-item" role="presentation"><a class="nav-link"
                        href="#tabsNavigationSimple2" data-bs-toggle="tab"
                        aria-selected="false" role="tab" tabindex="-1" width=400px>관심
                           브랜드</a></li>
                     <li class="nav-item" role="presentation"><a class="nav-link"
                        href="#tabsNavigationSimple3" data-bs-toggle="tab"
                        aria-selected="false" role="tab" tabindex="-1">창업 문의</a></li>

                  </ul>
                  <hr class="my-4" style="border-top: 1px solid #000;">


                  <div class="tab-content">

                     <div class="tab-pane active show" id="tabsNavigationSimple1"
                        role="tabpanel">
                        <form name="uf" action="updateMember.do"
                           onsubmit="return update()">
                           <div class="text-center">

                              <input type="hidden" name="no" value="${getMember.no}" />
                              <div class="mb-3 form-group">
                                 <label for="disabledTextInput">이름</label>
                                 <fieldset class="disabled-field">
                                    <input type="text" id="disabledTextName" name="name"
                                       class="form-control" placeholder="Disabled input"
                                       value="${getMember.name}" required>
                                 </fieldset>

                              </div>
                              <br>
                              
<div class="mb-3 form-group">
    <label for="disabledTextInput">비밀번호</label>
    <fieldset class="disabled-field">
        <input type="password" id="pw" name="pw" class="form-control" oninput="validatePassword()" placeholder="Disabled input" value="${getMember.pw}" required>
        <div style="font-size:15px;" id="passwordMessage"></div>
    </fieldset>
</div>
							
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RxtQjxVoAA0eMhyRc9t5Uwt5WulTBRcnHGquZiw-CR1d000GQ4uW1cFkuhDhU9PLjpw&usqp=CAU"
							             width="35" height="35" id="check" onclick="togglePassword();" style="margin-left:640px; margin-top:-43px;">
                              <br><br>
                              <!-- 핸드폰 입력 부분을 수정한 부분을 보여드립니다. -->
                              <div class="mb-3 form-group">
                                 <label for="disabledTextInput">핸드폰</label>
                                 <div class="row g-0">
                                    <!-- 컬럼 간격을 0으로 설정 -->
                                    <div class="col-sm">
                                       <fieldset class="disabled-field">
                                          <input type="text" id="disabledTextphone1" name="tel1"
                                             class="form-control" maxlength="3"
                                             placeholder="Disabled input" required value="${getMember.tel1}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                             >
                                       </fieldset>
                                    </div>
                                    <p class="col-sm-auto my-auto">-&nbsp;</p>
                                    <!-- "-" 추가 -->
                                    <div class="col-sm">
                                       <fieldset class="disabled-field">
                                          <input type="text" id="disabledTextphone2" name="tel2"
                                             class="form-control" maxlength="4"
                                             placeholder="Disabled input" required value="${getMember.tel2}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                             >
                                       </fieldset>
                                    </div>
                                    <p class="col-sm-auto my-auto">-&nbsp;</p>
                                    <!-- "-" 추가 -->
                                    <div class="col-sm">
                                       <fieldset class="disabled-field">
                                          <input type="text" id="disabledTextphone3" name="tel3"
                                             class="form-control" maxlength="4"
                                             placeholder="Disabled input" required value="${getMember.tel3}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                             >
                                       </fieldset>
                                    </div>
                                    

                                 </div>
                                 
                              </div>
                     <br>
                     <br>
								<div class="mb-3 form-group">
								    <label for="disabledTextInput">주소</label>
								    <div class="d-flex flex-column">
								        <div class="mb-2">
								            <input type="text" style="width:19em;" value="${getMember.postcode}" id="disabledTextpostcode" name="postcode" class="d_form mini" placeholder="우편번호" required>
								            <input type="button" class="d_btn" onclick="DaumPostcode()" value="우편번호 찾기">
								        </div>
								        <div class="mb-2">
								            <input type="text" style="width:28em;" value="${getMember.address}" class="d_form large" name="address" id="disabledTextaddress" placeholder="주소" required>
								        </div>
								        <div class="mb-2">
								            <input type="text" style="width:28em;" value="${getMember.detailAddress}" class="d_form" id="disabledTextdetailAddress" name="detailAddress" placeholder="상세주소" required>
								        </div>
								    </div>
								
								    <div id="layer" style="display:none; position:fixed; overflow:hidden; z-index:1; -webkit-overflow-scrolling:touch;">
								        <img src="data:image/png;base64,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" 
								        id="btnCloseLayer" style="position:absolute; cursor:pointer; right:0; top:50px; z-index:1; width:30px; height:30px;" onclick="closeDaumPostcode()" alt="닫기 버튼">
								    </div>
								</div>
                              <br>
                              
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>                        
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function DaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                var addr = ''; // 주소 변수

                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('disabledTextpostcode').value = data.zonecode;
                document.getElementById("disabledTextaddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("disabledTextdetailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 하고, z-index를 적용하여 다른 요소보다 위로 올립니다.
        element_layer.style.display = 'block';
        element_layer.style.zIndex = '9999';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    function initLayerPosition(){
        var width = 400; //우편번호서비스가 들어갈 element의 width
        var height = 500; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>

                              <script type="text/javascript">
                                 function mdelete() {
                                    var isDel = window
                                          .confirm("정말로 탈퇴 하시겠습니까?")
                                    if (isDel) {
                                       location.href = "delete.do"
                                    }
                                 }
                              </script>
                              <button class="w-100 btn btn-primary btn-lg" type="submit">수정
                                 완료</button>
                              <br> <br> <br> <br> <br> <br>
                              <hr class="my-4" style="border-top: 1px solid #000 !important">
                              <ul class="list-inline" text-align="right">
                                 <hr class="my-4">
                                 <li class="list-inline-item"><a
                                    href="javascript:mdelete()">탈퇴하기</a></li>
                              </ul>
                           </div>
                        </form>
                     </div>
                     <div class="tab-pane" id="tabsNavigationSimple2" role="tabpanel">
                        <div class="text-center">
                           <br> <br> <br>
                           <div class="row g-2">
                              <div class="row">
                                 <c:forEach var="brand" items="${wishlist}">
                                    <div class="col-md-6"
                                       style="flex: 0 !important; margin-bottom: 20px;">
                                       <!-- 각 카드에 data-bnum 속성을 추가하여 게시물 번호를 저장 -->
                                       <div class="card" style="width: 18rem;"
                                          data-bnum="${brand.bnum}">
                                          <img src="/files/${brand.bimage}"
                                             class="bd-placeholder-img card-img-top" width="100%"
                                             height="180">
                                          <ul class="list-group list-group-flush">
                                             <li class="list-group-item">${brand.storeName}</li>
                                             <li class="list-group-item">${brand.tablename}</li>
                                          </ul>
                                          <div class="card-body">
                                             <a href="bunsukDetail.do?bnum=${brand.bnum}"
                                                class="card-link">상세 정보 보기</a>
                                          </div>
                                       </div>
                                    </div>
                                 </c:forEach>
                             </div>
                              <!-- 카드 마지막 div -->
                           </div>
                        </div>
                     </div>
                     <!-- 고객센터 라인 -->
                     <div class="tab-pane" id="tabsNavigationSimple3" role="tabpanel">
                        <div class="text-center">
                           <div id="carouselExampleSlidesOnly" class="carousel slide"
                              data-bs-ride="carousel">
                              <div class="carousel-inner">
                                 <div class="carousel-item active">
                                    <img src="https://yslib.yeosu.go.kr/locker/img/prepare.png"
                                       class="d-block mx-auto w-50">
                                 </div>
                                 <div class="carousel-item">
                                    <img
                                       src="https://file.noononda.com/article/202305/20230531202524.png"
                                       class="d-block mx-auto w-50">
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>

                     <!-- 고객센터 라인 -->
                  </div>
               </div>
            </div>
         </div>
      </div>
      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
         crossorigin="anonymous"></script>
   </div>
   <script src="checkout.js"></script>
</body>
</html>
<%@ include file="bottom.jsp"%>




<!-- 1페이지 2페이지 나눌수 있는 코드 
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
 -->