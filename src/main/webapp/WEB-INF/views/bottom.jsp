<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.jfGgpS {
    position: fixed !important; 
    z-index: 10 !important;
    display: flex !important;
    flex-wrap: nowrap !important;
    width: auto !important;
    overflow: visible !important;
    background: transparent !important;
    bottom: 26px !important;
    right: 8px !important;
}
</style>

<script type="text/javascript">
   function custom(){
      alert("로그인 해주세요.")
      window.location="login.do"
      return
   }
</script>

<c:set var="isLogin" value="${false}" />
<c:if test="${!empty loginMember}">
   <c:set var="isLogin" value="${true}" />
</c:if>

<div data-ch-testid="launcher"
         class="Launcherstyled__LauncherButtonWrapper-ch-front__sc-1kx6op4-0 jfGgpS">
         <c:if test="${isLogin}">
            <button id="ch-plugin-launcher" type="button"
            onclick="window.location='re_list.board.do?kind=${loginMember.kind}&id=${loginMember.id}'"
            class="LegacyImageCustomButton__ImageLauncherButton-ch-front__sc-13afzgx-0 dlyGCd">
            <span class="a11y-hidden"></span> 
        
            <img alt="고객"
               src="https://cf.channel.io/pub-file/18358/63d2141fcfee91bb93f9/geurimja.png"
               style="width: 100px; height: 100px;"
               class="LegacyImageCustomButton__Image-ch-front__sc-13afzgx-1 gXXJcR">
         </button>
         </c:if>
         
         <c:if test="${!isLogin}">
            <button id="ch-plugin-launcher" type="button"
            onclick="javascript:custom()"
            class="LegacyImageCustomButton__ImageLauncherButton-ch-front__sc-13afzgx-0 dlyGCd">
            <span class="a11y-hidden"></span> 
            <img alt="고객"
               src="https://cf.channel.io/pub-file/18358/63d2141fcfee91bb93f9/geurimja.png"
               style="width: 100px; height: 100px;"
               class="LegacyImageCustomButton__Image-ch-front__sc-13afzgx-1 gXXJcR">
         </button>
         </c:if>
         
      </div>

<div id="ft">
   <div class="area">
      <div class="logo">
         <img src="https://i.ibb.co/16TMG7T/icon-deal.png">
      </div>
      <div class="copy">
         <p>
            F4 <br class="mrs"> <span>|</span> (주)황색 <br class="mrs">
            <span>|</span> 사업자등록번호 : 000-00-00000
         </p>
         <p>
            주소 : 서울특별시 종로구 어딘가 5층 509호 <br class="mrs"> <span>|</span> 대표번호
            000-0000
         </p>
         <p>
            은행명 : 국민은행 <br class="mrs"> <span>|</span> 계좌번호 :
            303802-04-309608 <br class="mrs"> <span>|</span> 예금주 : 정준모
         </p>
         <p class="fts">Copyright(c) 2024 F4. All Rights Reserved.</p>
      </div>
   </div>
</div>
</body>
</html>