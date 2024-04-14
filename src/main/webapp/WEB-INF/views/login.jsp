<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="top2.jsp"%>

<style>
/* 부모 요소에 Flexbox 레이아웃을 적용합니다. */
.button-container {
   display: flex; /* Flexbox 사용 */
   justify-content: center; /* 가로 방향 가운데 정렬 */
   align-items: center; /* 세로 방향 가운데 정렬 */
}

/* 버튼 이미지의 크기를 조정합니다. */
.button-container img {
   width: 222px; /* 원하는 가로 크기로 조정 */
   height: 50px; /* 원하는 세로 크기로 조정 */
   margin: 0 5px; /* 버튼 사이의 간격을 조절할 수 있어요 */
}
</style>


<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
   function checkJadong(){
      let isChecked = document.getElementById("jadong").checked;
        let chks = document.getElementsByName("saveid");
        for (let i = 0; i < chks.length; i++) {
            chks[i].checked = isChecked;
        }
    }
   
   function com_member_confirm_submit(){
	      if(com_member.id.value == 'admin' && com_member.pw.value == 'admin'){
	         alert("관리자 로그인 페이지가 아닙니다")
	         location.href="adminok.do";
	         return false;
	      }else{
	         document.com_member.submit()
	      }
   }
</script>

<script type="text/javascript">
function searchMember(mode){
   window.open("searchMember.do?mode="+mode, "search", "width=640, height=600")
}
</script>


<div class="wrapper_bg">
   <div class="wrapper">
      <div id="sub_wrap" class="webfont">
         <div id="aside">

            <br>
            <br>
            <div class="left_title">
               <p class="big_title">바로가기</p>
            </div>
            <div class="left_nav">
               <ul class="left_menu">
                  <li><a onClick="javascript:membership()"
                     style="cursor: pointer;">회원가입</a></li>
                  <li><a href="admin.do">관리자</a></li>
                  <li><a href="javascript:searchMember('id')">아이디 찾기</a></li>
                  <li><a href="javascript:searchMember('pw')">비밀번호 찾기</a></li>
               </ul>
            </div>
         </div>
         <div id="section">

            <br>
            <br>
            <br>
            <div id="contentsArea">
               <p id="sub_title">로그인</p>
               <div id="txtbox_info">
                  아이디와 비밀번호를 정확히 입력해 주시기 바랍니다.<br> <br>
               </div>
            </div>

            <div id="member">

               <form name="com_member" method="post" action="login_ok.do"
                  onsubmit="return com_member_confirm_submit()">

                  <div class="login_shop">
                     <div class="form-signin">
                        <div class="form-signin-heading">로그인을 확인합니다.</div>

                        <label for="inputId" class="sr-only">아이디</label>
                        <c:if test="${not empty cookie.jadong}">
                           <c:if test="${not empty cookie.saveid}">
                              <input type="text" name="id" class="form-control"
                                 value="${cookie['saveid'].value}">
                              <input type="password" name="pw" class="form-control"
                                 value="${cookie['jadong'].value}">
                           </c:if>
                           <c:if test="${empty cookie.saveid}">
                              <input type="text" name="id" class="form-control"
                                 value="${cookie['saveid'].value}">
                              <input type="password" name="pw" class="form-control"
                                 value="${cookie['jadong'].value}">
                           </c:if>
                        </c:if>
                        <c:if test="${empty cookie.jadong}">
                           <c:if test="${not empty cookie.saveid}">
                              <input type="text" name="id" class="form-control"
                                 value="${cookie['saveid'].value}">
                              <input type="password" name="pw" class="form-control"
                                 placeholder="비밀번호를 입력해 주세요">

                           </c:if>
                           <c:if test="${empty cookie.saveid}">
                              <input type="text" name="id" class="form-control"
                                 placeholder="아이디를 입력해 주세요">
                              <input type="password" name="pw" class="form-control"
                                 placeholder="비밀번호를 입력해 주세요">
                           </c:if>
                        </c:if>
                        <label for="inputPw" class="sr-only">비밀번호</label>


                        <nobr>
                           <c:if test="${not empty cookie.jadong}">
                              <c:if test="${not empty cookie.saveid}">
                                 <input type="checkbox" name="saveid" checked>
                                 <font face="굴림" size="2">아이디 기억하기</font>
                                 <input type="checkbox" id="jadong" name="jadong"
                                    onclick="checkJadong();" checked>
                                 <font face="굴림" size="2">자동 로그인</font>
                              </c:if>
                              <c:if test="${empty cookie.saveid}">
                                 <input type="checkbox" name="saveid">
                                 <font face="굴림" size="2">아이디 기억하기</font>
                                 <input type="checkbox" name="jadong" id="jadong"
                                    onclick="checkJadong();" checked>
                                 <font face="굴림" size="2">자동 로그인</font>
                              </c:if>
                           </c:if>
                           <c:if test="${empty cookie.jadong}">
                              <c:if test="${not empty cookie.saveid}">
                                 <input type="checkbox" name="saveid" checked>
                                 <font face="굴림" size="2">아이디 기억하기</font>
                                 <input type="checkbox" name="jadong" id="jadong"
                                    onclick="checkJadong();">
                                 <font face="굴림" size="2">자동 로그인</font>
                              </c:if>
                              <c:if test="${empty cookie.saveid}">
                                 <input type="checkbox" name="saveid">
                                 <font face="굴림" size="2">아이디 기억하기</font>
                                 <input type="checkbox" name="jadong" id="jadong"
                                    onclick="checkJadong();">
                                 <font face="굴림" size="2">자동 로그인</font>
                              </c:if>
                           </c:if>
                        </nobr>
                        <br>

                        <div>
                           <button class="btn btn-sm btn-block btn-default"
                              style="width: 50%; float: left;" type="submit">
                              <strong>로그인</strong>
                           </button>
                           <button class="btn btn-sm btn-block btn-default" type="reset"
                              onClick="history.back(-1)" style="width: 50%;">
                              <strong>취소</strong>
                           </button>
                           <br>
                        </div>
                        <div class="button-container">
                           <a href="https://kauth.kakao.com/oauth/authorize?client_id=b10378f01f187ec808f0ffaac1070455&redirect_uri=http://localhost:8080/kakaologin.do&response_type=code">
                              <img height="40" 
                              src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
                              width="222" alt="카카오 로그인 버튼" />
                           </a>
                           <div id="naver_id_login">
                                       <a href="${url}"> 
                                          <img src="https://i.ibb.co/kqGhZhJ/nnaverr.png"  alt="네이버 로그인 버튼" />
                                       </a>
                                    </div>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <div class="clear"></div>
   </div>
</div>
