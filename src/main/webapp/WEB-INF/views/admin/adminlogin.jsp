<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/css/admin.css">

<html>
<head>
<style>
  .login-box {
    text-align: center; /* 로그인 박스 가운데 정렬 */
  }
</style>
<meta charset="UTF-8">
<title>A D M I N L O G I N</title>
</head>

<script type="text/javascript">
   function login(){
      if(admin.id.value != 'admin'){
         if(admin.pw.value != 'admin'){
            alert("관리자만 볼 수 있는 페이지 입니다.")
            location.href="login.do";
         }
      }else{
         document.admin.submit()
      }
   }
    function handleKeyPress(event) {
         if (event.key == 'Enter') {
           login();
         }
       }
   
</script>

<body>
   <img src="https://i.ibb.co/XC3FY1v/admin01.jpg" class="center-image">

   <div class="center-image"></div>

   <div class="login-box">
      <h2>F $</h2>
      <form name="admin" action="adminlogin_ok.do" method="post">
         <div class="user-box">
            <input type="text" name="id" required> <label>I D</label>
         </div>
         <div class="user-box">
            <input type="password" name="pw" required onkeypress="handleKeyPress(event)"> <label>Pass
               Word</label>
         </div>
         <a style="cursor:pointer;" onClick="javascript:login()"><span></span> <span></span> <span></span> <span></span>
            Login
         </a>
      </form>
   </div>
</body>
</html>

