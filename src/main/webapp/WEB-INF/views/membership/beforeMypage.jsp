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
<title>마이페이지 가기전</title>
</head>
<body>

   <div data-v-581bdaec="" class="help_area">
      <div data-v-581bdaec="">
      
         <h2 data-v-581bdaec="" class="subtitle1">비밀번호</h2>

         <form name="f" action="mypage_ok.do" method="post">

            <div data-v-581bdaec="" class="help_notice">
               <p data-v-581bdaec="" align="center" class="notice_txt">
                  가입 시 등록하신 비밀번호를 입력하시면,<br data-v-581bdaec="">마이페이지로 이동됩니다.
               </p>
            </div>
            <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
               <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">비밀번호</h3>
               <div data-v-5ee806c3="" class="input_item">
                  <input data-v-5ee806c3="" type="password" name="pw" required
                     placeholder="가입하신 비밀번호" autocomplete="off" class="input_txt">
               </div>
            </div>


            <div data-v-581bdaec="" class="help_btn_box" align="center">
               <button data-v-0a6aebaa="" data-v-581bdaec=""
                  style="width: 40%; float: left; cursor: pointer;" type="submit"
                  class="btn full solid disabled">확인</button>
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