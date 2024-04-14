<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
<title>인증 코드 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        .help_area {
            background-color: white;
            max-width: 600px;
            padding: 20px;
            border-radius: 8px;
        }

       .help_area h3 {
          font-size: 17px;
          color: #333;
          margin: 13px 0;
      }

        hr {
            border: 1px solid #000;
            margin: 10px 0;
        }

        button {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: black;
        }
        
        
        .kaHbmv {
    box-sizing: border-box;
    font-size: 14px;
    line-height: 1.29;
    height: 48px;
    width: 100%;
    padding-left: 15px;
    background-color: rgb(255, 255, 255);
 
    color: rgb(44, 44, 44);
    appearance: none;
}
        
        
 
       </style> 
</head>
<body>
<div data-v-581bdaec="" align="center" class="help_area">
        <div data-v-581bdaec="">
        <h2>이메일 인증 코드 인증</h2>
        <hr color="black" width="300">
        <form id="verificationForm" onsubmit="verifyEmail(); return false;">
            <input class="kaHbmv" placeholder="인증 코드 6자리를 입력해주세요." maxlength="6"  name="VerificationCode" id="authCode" type="text" autofocus style="width: 270px; height: 25px; margin-top: 25px;">
            <br><br>
            <button style="width: 40%; cursor: pointer; margin-top: 50px;" class="btn full solid disabled">인증 하기</button>
        </form>
    </div>
</div>
    <script>
        function closeWindow() {
        window.close();
    }
        function verifyEmail() {
            var verificationCode = document.getElementById("authCode").value;
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "EmailVerification_ok.do?VerificationCode=" + verificationCode, true);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var response = xhr.responseText;
                    alert(response); // 서버에서 받은 응답을 처리
                    if (response === "인증 성공") {
                        closeWindow(); // 인증이 성공하면 창을 닫음
                    }
                }
            };
            xhr.send();
        } 
    </script>   
</body>
</html>    