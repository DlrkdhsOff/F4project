<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../top2.jsp"%>
 

<head>
<style>
.css-aepcay {
   width: 90%;
   max-height: 400px;
}

img {
   border-style: none;
}

* {
   box-sizing: border-box;
   -webkit-touch-callout: none;
}

img {
   overflow-clip-margin: content-box;
   overflow: clip;
}

body {
   color: #191E23;
   font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
      "Segoe UI", "Apple SD Gothic Neo", "Apple Color Emoji",
      "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
   font-size: 14px;
}

:root { -
   -swiper-theme-color: #007aff;
}

:root { -
   -toastify-color-light: #fff; -
   -toastify-color-dark: #121212; -
   -toastify-color-info: #3498db; -
   -toastify-color-success: #07bc0c; -
   -toastify-color-warning: #f1c40f; -
   -toastify-color-error: #e74c3c; -
   -toastify-color-transparent: hsla(0, 0%, 100%, .7); -
   -toastify-icon-color-info: var(- -toastify-color-info); -
   -toastify-icon-color-success: var(- -toastify-color-success); -
   -toastify-icon-color-warning: var(- -toastify-color-warning); -
   -toastify-icon-color-error: var(- -toastify-color-error); -
   -toastify-toast-width: 320px; -
   -toastify-toast-background: #fff; -
   -toastify-toast-min-height: 64px; -
   -toastify-toast-max-height: 800px; -
   -toastify-font-family: sans-serif; -
   -toastify-z-index: 9999; -
   -toastify-text-color-light: #757575; -
   -toastify-text-color-dark: #fff; -
   -toastify-text-color-info: #fff; -
   -toastify-text-color-success: #fff; -
   -toastify-text-color-warning: #fff; -
   -toastify-text-color-error: #fff; -
   -toastify-spinner-color: #616161; -
   -toastify-spinner-color-empty-area: #e0e0e0; -
   -toastify-color-progress-light: linear-gradient(90deg, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6,
      #ff2d55); -
   -toastify-color-progress-dark: #bb86fc; -
   -toastify-color-progress-info: var(- -toastify-color-info); -
   -toastify-color-progress-success: var(- -toastify-color-success); -
   -toastify-color-progress-warning: var(- -toastify-color-warning); -
   -toastify-color-progress-error: var(- -toastify-color-error);
}

html {
   -webkit-tap-highlight-color: transparent;
   -webkit-font-smoothing: antialiased;
   -moz-osx-font-smoothing: auto;
}

html {
   line-height: 1.15;
   -webkit-text-size-adjust: 100%;
}

@media screen and (min-width: 972px) {
   .css-1qlgnbu {
      padding-bottom: 16px;
   }
}

.css-1qlgnbu {
   position: relative;
   display: flex;
   flex-direction: column;
   -webkit-box-align: center;
   align-items: center;
}

.css-1iq33u {
   width: 1px;
   height: 12px;
   background-color: rgb(228, 230, 231);
   margin: 0px 8px;
}

.css-1dbekaj {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   /* justify-content: space-between; */
   -webkit-box-align: center;
   align-items: flex-start;
}

.css-7g00ap {
   display: flex;
   flex-direction: column;
   gap: 10px;
}

.css-kakc4k {
   position: relative;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   /* justify-content: space-between; */
   -webkit-box-align: center;
   align-items: center;
   padding-bottom: 20px;
}

.css-1bjsiun {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   text-align: center;
   background-color: rgb(0, 138, 148);
   font-size: 16px;
   letter-spacing: -0.59px;
   line-height: 1.5;
   border-radius: 8px;
   color: rgb(255, 255, 255);
   width: 100%;
   padding: 0px;
   max-width: 100%;
   height: 51px;
   border: none;
   font-weight: 600;
}

.css-1tl6tw {
   position: sticky;
   top: 160px;
   display: flex;
   flex-direction: column;
   gap: 20px;
   width: 300px;
}

.css-ozarz1 {
   position: relative;
   width: 100%;
   max-width: 972px;
   margin: 0px auto;
   padding: 40px 0px;
}

@media screen and (min-width: 972px) {
   .css-9eab7h {
      gap: 24px;
   }
}

@media screen and (min-width: 972px) {
   .css-86ajlh {
      word-break: normal;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
   }
}

.css-trdvrw {
   display: flex;
   flex-direction: column;
   width: 100%;
   gap: 10px;
}

.css-1hqidh4 {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
}

.css-1lrk4c1 {
   display: flex;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   flex-direction: row;
}

a, a:link, a:visited, a:hover, a:active {
   color: #191E23;
   -webkit-text-decoration: none;
   text-decoration: none;
   cursor: pointer;
}

.css-1i2xnts {
   font-size: 16px;
   font-weight: 500;
   color: rgb(115, 121, 126) !important;
}

a {
   background-color: transparent;
}

a:-webkit-any-link {
   color: -webkit-link;
   cursor: pointer;
   text-decoration: none;
}

.css-86ajlh {
   width: 100%;
   font-size: 24px;
   font-weight: 700;
   line-height: normal;
   word-break: break-word;
}

h1, h2, h3, h4, h5, h6, p, span, label {
   margin: 0;
   overscroll-behavior: none -moz-user-select:none -webkit-user-select:none
      -ms-user-select:none user-select:none;
}

.css-9eab7h {
   display: flex;
   flex-direction: column;
}

@media screen and (min-width: 972px) {
   .css-1qay1u4 {
      color: rgb(0, 138, 148);
      text-decoration: none;
   }
}

.css-du4oqo {
   font-size: 12px;
   font-weight: 600;
   letter-spacing: -0.56px;
   line-height: 14px;
   color: rgb(150, 155, 158);
}

element.style {
   position: absolute;
   inset: 0px;
   box-sizing: border-box;
   padding: 0px;
   border: none;
   margin: auto;
   display: block;
   width: 0px;
   height: 0px;
   min-width: 100%;
   max-width: 100%;
   min-height: 100%;
   max-height: 100%;
}

img {
   border-style: none;
}

* {
   box-sizing: border-box;
   -webkit-touch-callout: none;
}

@media screen and (min-width: 972px) {
   .css-8n9nt {
      padding: 0px;
   }
}

@media screen and (min-width: 972px) {
   .css-1ox90r4 {
      display: grid;
      grid-template-columns: 1fr 1fr;
   }
}

.css-1buyask {
   padding: 30px;
   border: 1px solid rgb(245, 245, 245);
   border-radius: 8px;
   box-shadow: rgba(0, 0, 0, 0.1) 0px 2px 6px 0px;
}

.css-fmubpl {
   display: flex;
   flex-direction: row;
   gap: 4px;
   width: 100%;
}

.css-sf105t {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: calc(100% - 72px);
}

.css-1ox90r4 {
   display: grid;
   flex-direction: column;
   gap: 12px;
   border-left: 3px solid rgb(228, 230, 231);
   padding-left: 12px;
}

.css-1hmplpd {
   position: sticky;
   top: 80px;
   display: flex;
   flex-direction: column;
   gap: 20px;
   width: 300px;
}

.css-8n9nt {
   display: flex;
   flex-direction: column;
   gap: 20px;
   position: relative;
   padding: 20px 16px;
}

.css-wshr5a {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: start;
   justify-content: flex-start;
   gap: 8px;
   width: 100%;
}

.css-1cb9o5h {
   display: flex;
   flex-direction: column;
   gap: 20px;
   width: 640px;
}

@media screen and (min-width: 972px) {
   .css-1ggltpo {
      height: 64px;
   }
}

.css-wshr5a {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: start;
   justify-content: flex-start;
   gap: 8px;
   width: 100%;
}

.css-1ggltpo {
   display: flex;
   flex-direction: row;
   align-items: flex-end;
   gap: 20px;
   height: 48px;
}

ul, ol, li {
   list-style: none;
}

ul, ol {
   margin: 0;
   padding: 0;
   border: 0 none;
}

img {
   overflow-clip-margin: content-box;
   overflow: clip;
}

button {
   margin: 0;
   padding: 0;
   border: 0 none;
   background-color: transparent;
   color: black;
   text-align: left;
   outline: none;
   cursor: pointer;
}

button, select {
   text-transform: none;
}

button, input, optgroup, select, textarea {
   font-family: inherit;
   font-size: 100%;
   line-height: 1.15;
   margin: 0;
}

button, input {
   overflow: visible;
}

button, [type='button'], [type='reset'], [type='submit'] {
   -webkit-appearance: button;
}

button {
   font-style:;
   font-variant-ligatures:;
   font-variant-caps:;
   font-variant-numeric:;
   font-variant-east-asian:;
   font-variant-alternates:;
   font-variant-position:;
   font-weight:;
   font-stretch:;
   font-size:;
   font-family:;
   font-optical-sizing:;
   font-kerning:;
   font-feature-settings:;
   font-variation-settings:;
   text-rendering: auto;
   color: buttontext;
   letter-spacing: normal;
   word-spacing: normal;
   line-height: normal;
   text-transform: none;
   text-indent: 0px;
   text-shadow: none;
   text-align: center;
   cursor: default;
}

.css-1qay1u4 {
   font-size: 16px;
   font-weight: 500;
   color: rgb(115, 121, 126);
}

.css-yjwtvj {
   width: 140px;
   font-size: 14px;
   font-weight: 600;
   color: rgb(150, 155, 158);
   line-height: 140%;
}

.css-1wl98s8 {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: flex-start;
   gap: 12px;
   width: 100%;
}

.css-sf105t {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: calc(100% - 72px);
}

.css-i0m1bj {
   font-size: 24px;
   font-weight: 700;
}
</style>


</head>

<c:set var="isLogin" value="${false}" />
<c:if test="${!empty loginMember}">
   <c:set var="isLogin" value="${true}" />
</c:if>

<body>
   <script type="text/javascript">
   function popUp(bnum) {

       window.open("bunsuk_update.do?bnum=" + bnum, "Bunsuk Update", "width=500, height=900");
   }
   
   function checkDel(bnum, bimage){
      var isDel = window.confirm("정말로 삭제하시겠습니까?")
      if (isDel){
         document.del.bnum.value = bnum
         document.del.bimage.value = bimage
         document.del.submit()   
      }
   }
</script>
   <script src="https://kit.fontawesome.com/2c049cfc07.js"
      crossorigin="anonymous"></script>
   <br>
   <br>
   <br>
   <br>
   <div id="__next" data-reactroot="">
      <div class="css-1iwk1g9">
         <main class="css-k80na1"> <c:if test="${not empty dto}">
            <div class="css-1qlgnbu">
               <div class="css-ozarz1">
                  <div class="css-1dbekaj">
                     <div class="css-1cb9o5h">
                        <div class="css-9eab7h">
                           <div class="css-1d3w5wq">
                              <div class="css-cr4i17">
                                 <img src="/files/${dto.bimage}" alt=""
                                    class="css-aepcay">
                              </div>
                           </div>
                           <div class="css-8n9nt">
                              <div class="css-1g09faq">
                                 <div class="css-1ci7ek6">
                                    <div class="css-trdvrw">
                                       <h2 class="css-86ajlh">${dto.storeName}</h2>
                                       <div class="css-1hqidh4">
                                          <div class="css-1i2xnts" target="_blank">${dto.tablename}</div>
                                          <div class="css-1iq33u"></div>
                                          <p class="css-1qay1u4">${dto.area} m²</p>
                                          &nbsp;&nbsp;&nbsp;
                                          <button class="css-1lrk4c1">화폐단위 : (천 단위)</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>

                              <div class="css-1ox90r4">
                                 <div class="css-1ybde5b">
                                    <span style="color: black; font-size: 18px;"
                                       class="css-yjwtvj">상세정보</span>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span style="color: black; font-size: 18px;"
                                       class="css-yjwtvj">가맹점 평균 매출 상세정보 </span>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">창업비용</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.total}" pattern="###,###"/></p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">면적 단위 평균 매출금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.storeAreaSales}" pattern="###,###"/></p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">주소</span>
                                    <p class="css-sf105t">${dto.address}</p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">평균 매출 금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.averageSales}" pattern="###,###"/></p>
                                 </div>


                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">면적</span>
                                    <p class="css-sf105t">${dto.area} m²</p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span style="color: black; font-size: 18px;"
                                       class="css-yjwtvj">인테리어 비용 상세 정보</span>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">보증금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.depositAmount}" pattern="###,###"/></p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">인테리어 비용</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.interiorCost}" pattern="###,###"/></p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">교육금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.education}" pattern="###,###"/></p>
                                 </div>
                                 <div>
                                    <span class="css-yjwtvj">기타금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.otherCosts}" pattern="###,###"/></p>
                                 </div>

                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">평당 인테리어 비용</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.squareInteriorCost}" pattern="###,###"/></p>
                                 </div>
                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">가맹 금액</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.franchiseAmount}" pattern="###,###"/></p>
                                 </div>
                                 <div class="css-1ybde5b">
                                    <span class="css-yjwtvj">합계</span>
                                    <p class="css-sf105t"><fmt:formatNumber value="${dto.total}" pattern="###,###"/></p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="css-1hmplpd">
                        <div class="css-1buyask">
                           <div class="css-kakc4k">
                              <p class="css-i0m1bj">${dto.storeName}</p>
                              <br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <c:if test="${isLogin}">
                                 <c:if test="${loginId != 'admin'}">
                                    <button onclick="toggleWishlist(${dto.bnum})">
                                    <i id="heartIcon${dto.bnum}"
                                       class="fa-regular fa-heart fa-2xl"
                                       style="color: #ff0000; cursor: pointer;"></i>
                                 </button>
                                 </c:if>
                              </c:if>
                              <c:if test="${loginId == 'admin'}">
                                 <button onclick="adminMember()">
                                    <i id="emptyHeart" class="fa-regular fa-heart fa-2xl"
                                       style="cursor: pointer;"></i>
                                 </button>
                              </c:if>
          
         <c:if test="${!isLogin}">
            <button onclick="nonMember()">
               <i id="emptyHeart" class="fa-regular fa-heart fa-2xl"
                  style="cursor: pointer;"></i>
            </button>
         </c:if> 
<script>
    function nonMember() {
        alert("로그인을 해주세요");
        location.href="login.do";
        return;
    }
    
    function adminMember(){
       alert("관리자는 찜을 할 수 없습니다");
        return false;
    }
</script>  
 <script>
document.addEventListener('DOMContentLoaded', function() {
    var bnum = ${dto.bnum};
    checkAndSetWishlistStatus(bnum);
});

function checkAndSetWishlistStatus(bnum) {
    var heartIcon = document.getElementById("heartIcon" + bnum);
   

    // 로컬 스토리지에서 찜 상태를 가져옵니다
    var isWishlist = localStorage.getItem("wishlist_" + bnum) === "true";

    // 찜 상태에 따라 UI를 업데이트합니다
    if(${wishlist.id == loginMember.id}){
       if (isWishlist) {
            heartIcon.classList.toggle("fa-regular", false);
            heartIcon.classList.toggle("fa-solid", true);
        }
    }
}

//===================================================================================
/* function toggleWishlist(bnum) {
    var heartIcon = document.getElementById("heartIcon" + bnum);
    // 현재 찜 상태를 확인
    var isWishlist = heartIcon.classList.contains("fa-solid");
    var xhr = new XMLHttpRequest();
    if (isWishlist) {
        // 찜 취소 요청
        xhr.open("GET", "removeFromWishlist.do?bnum=" + bnum, true);
    } else {
        // 찜하기 요청
        xhr.open("GET", "addToWishlist.do?bnum=" + bnum, true);
    }
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                // 찜 상태 변경 및 UI 업데이트
                heartIcon.classList.toggle("fa-regular");
                heartIcon.classList.toggle("fa-solid");
                // 찜하기 또는 찜 취소 메시지 표시
                if (isWishlist) {
                    alert("내꺼 찜 취소!");
                    // 찜 취소되면 로컬 스토리지에서 해당 항목을 제거
                    localStorage.removeItem("wishlist_" + bnum);
                } else {
                    alert("내꺼 찜!");
                    // 찜하기 되면 로컬 스토리지에 해당 항목을 추가
                    localStorage.setItem("wishlist_" + bnum, "true");
                }
            } else {
                // 실패 메시지 표시
                console.error("찜하기 또는 찜 취소 실패");
                alert("찜하기 또는 찜 취소 실패");
            }
        }
    };
    xhr.send();
} */

function toggleWishlist(bnum) {
    var heartIcon = document.getElementById("heartIcon" + bnum);

    // 현재 찜 상태를 확인
    var isWishlist = heartIcon.classList.contains("fa-solid");

    var xhr = new XMLHttpRequest();

    if (isWishlist) {
        // 찜 취소 요청
        xhr.open("GET", "removeFromWishlist.do?bnum=" + bnum, true);
    } else {
        // 찜하기 요청
        xhr.open("GET", "addToWishlist.do?bnum=" + bnum, true);
    }

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                // 찜 상태 변경 및 UI 업데이트
                heartIcon.classList.toggle("fa-regular");
                heartIcon.classList.toggle("fa-solid");

                // 찜하기 또는 찜 취소 메시지 표시
                var responseMessage = xhr.responseText;
                alert(responseMessage);
                
                // 성공 메시지인 경우에만 로컬 스토리지 처리
                if (responseMessage.includes("성공")) {
                    if (isWishlist) {
                        // 찜 취소되면 로컬 스토리지에서 해당 항목을 제거
                        localStorage.removeItem("wishlist_" + bnum);
                    } else {
                        // 찜하기 되면 로컬 스토리지에 해당 항목을 추가
                        localStorage.setItem("wishlist_" + bnum, "true");
                    }
                }
            } else {
                // 실패 메시지 표시
                var errorMessage = xhr.responseText;
                console.error("찜하기 또는 찜 취소 실패: " + errorMessage);
                alert(errorMessage);
            }
        }
    };

    xhr.send();
}

//===============================================================================================


function brandChat(sender, receiver) {
	   window.open("brandChat.do?sender=" + sender + "&receiver=" + receiver, "brandChat",
	         "width=560, height=680")
	}
</script>
      </div>

         <div class="css-kakc4k">
         <span>사용자 이름 : ${dto.name}</span>
      </div>

      <div class="css-kakc4k">
         <span>전화번호 : ${dto.allHp}</span>
      </div>
      <br>
      <div class="css-7g00ap">
         <c:if test="${isLogin}">
            <c:if test="${brandId == loginId}">
               <div align="center" class="css-pw7jst">
                  <button onclick="location.href=''" class="css-1bjsiun">버튼</button>
                  <br> <br> <a href="javascript:void(0);"
                     onclick="popUp(${dto.bnum})">수정</a> | <a
                     href="javascript:checkDel('${dto.bnum}','${dto.bimage}')">삭제</a>
               </div>
            </c:if>
         </c:if>
         <c:if test="${isLogin}">
            <c:if test="${brandId != loginId}">
               <div align="center" class="css-pw7jst">
                  <button onclick="javascript:brandChat('${loginId}','${dto.id}')" class="css-1bjsiun">문의하기</button>
                  <br> <br>
               </div>
            </c:if>
         </c:if>
      </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   </c:if>
   </main>
   <div></div>
   </div>
   </div>

   <form name="del" action="brand_delete.do" method="post">
      <input type="hidden" name="bnum"> <input type="hidden"
         name="bimage">
   </form>
</body>
<%@ include file="../bottom.jsp"%>