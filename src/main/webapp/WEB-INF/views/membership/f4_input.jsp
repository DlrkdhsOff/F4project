<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="../top2.jsp"%>

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
    width: 38em;
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
.custom-button:active {
      border-color: transparent; /* 눌렀을 때 테두리 색상을 완전히 투명으로 설정 */
    }
</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"
   src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
 function idCheck(id,pw,confirmpassword,name,tel2,tel3,email1){
     location.href="idCheck.do?id="+id+"&pw="+pw+"&confirmpassword="+confirmpassword+"&name="+name+"&tel2="+tel2+"&tel3="+tel3+"&email1="+email1;
     return
  }
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
   // 비밀번호 확인 값 확인
   function validatePasswordok()   {
       var password = document.getElementById('pw').value;  
          var confirmPassword = document.getElementById('ConfirmPassword').value;
          var confirmPasswordMessage = document.getElementById('confirmPasswordMessage');
      
       
   if (confirmPassword === '') {
       confirmPasswordMessage.textContent = '';
       
   } else if (password !== confirmPassword) {
       confirmPasswordMessage.textContent = '비밀번호가 일치하지 않습니다.';
       return false;
   } else {
       confirmPasswordMessage.textContent = '';
   }

   return true;
   }
   
   
   
   
   var formDisabled = false; // 폼 활성/비활성 여부를 나타내는 변수
   
// 부모 창의 폼(submit 버튼) 비활성화 함수
   function disableForm() {
       // 폼 요소들을 선택하여 disabled 속성 추가
       var formElements = document.querySelectorAll('form input, form button');
       formElements.forEach(function(element) {
           element.disabled = true;
       });
       formDisabled = true;
   }

   // 부모 창의 폼(submit 버튼) 활성화 함수
   function enableForm() {
       // 폼 요소들을 선택하여 disabled 속성 제거
       var formElements = document.querySelectorAll('form input, form button');
       formElements.forEach(function(element) {
           element.disabled = false;
       });
       formDisabled = false;
   }
   
 
   function emailVerification() {
       var popupWindow;
       var emailValue = document.querySelector('input[name="email1"]').value.trim();
       var emailDomain = document.querySelector('input[name="email2"]').value;
       var email = emailValue + "@" + emailDomain;

       if (emailValue === "") {
           console.log("이메일을 입력하세요");
           return;
       }

       // 화면 중앙에서 오른쪽으로 이동한 위치 계산
       var screenWidth = window.screen.width;
       var popupWidth = 500; // 팝업 창의 너비

       // 팝업 창이 화면 중앙에서 오른쪽으로 이동한 위치 계산
       var leftPosition = (screenWidth - popupWidth) / 2 + 400;

       var url = "EmailVerification.do?email=" + email;

       // 부모 창의 폼(submit 버튼) 비활성화
       disableForm();

       // 팝업 창 열기
       popupWindow = window.open(url, "_blank", "width=500,height=500,left=" + leftPosition);

       // 팝업 창이 닫힐 때 이벤트 처리
       popupWindow.onunload = function() {
           // 부모 창의 폼(submit 버튼) 활성화
           enableForm();
       };

       console.log("이메일 인증을 하세요");
   }
   
   
   
   
   $(document).ready(function() {
       $('#selectEmail').change(function(){
           var selectedOptionValue = $(this).val();
           if(selectedOptionValue === '1') { // 직접입력일 경우
               $("#email2").val('').prop("disabled", false); // 값 초기화 및 활성화
           } else { // 직접입력이 아닐 경우
               $("#email2").val(selectedOptionValue).prop("disabled", true); // 선택값 입력 및 비활성화
           }
       });
   });
</script>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/signn.css">
<link rel="stylesheet" type="text/css" href="/css/signnn.css">

</head>
<body class="main">
   <script>
  // 비밀번호 표시 여부를 전환하는 함수
  function togglePassword() {
    var passwordInput = document.getElementById('pass');
    var confirmPasswordInput = document.getElementById('confirmPassword');
    var image = document.getElementById('check'); // 이미지 요소 추가
    
    if (passwordInput.type === "password") {
      passwordInput.type = "text";
      confirmPasswordInput.type = "text";
      image.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iH2ZkkJjITyub5sugEjUVvKwL39ah8uEtUNwqz5OVQXrbInfnXWEKi9J_V0cAeshF0A&usqp=CAU";
      image.width = 18;
      image.height = 18;
    } else { 
      passwordInput.type = "password";
      confirmPasswordInput.type = "password";
      image.src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RxtQjxVoAA0eMhyRc9t5Uwt5WulTBRcnHGquZiw-CR1d000GQ4uW1cFkuhDhU9PLjpw&usqp=CAU";
      image.width = 22;
      image.height = 22;
    }
  }
  
  function certify(id, name, tel1, tel2, tel3){
        window.open("saup.do?id="+id+"&name="+name+"&tel1="+tel1+"&tel2="+tel2+"&tel3="+tel3+"&certify=A", "saup", "width=500, height=800")
        
     }
  
  
</script>

   <script type="text/javascript" async=""
      src="https://www.googletagmanager.com/gtag/js?id=G-CDKFSSN8GP&amp;cx=c&amp;_slc=1"></script>
   <script async="" defer=""
      src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js"></script>
   <script async="" src="//www.google-analytics.com/analytics.js"></script>
   <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script>


   <div class="wrap">


      <section id="ccss-1c8isl7" class="subpage">
         <div class="contents">
            <h2>
               <img
                  src="https://img.sonyunara.com/2019/asset/pc/img/sub/member/tit_join1.png"
                  alt="JOIN US">
            </h2>
            <div class="member">
               <div class="join">
                  <form name="joinform" method="post" action="f4_input_ok.do"
                     onsubmit="return join_chk();" autocomplete="off">
                     <fieldset>
                        <legend>회원가입</legend>
                        <ul class="form-box">
                           <li>
                              <p class="tit">아이디</p>
                              <p class="form">
                                 <c:if test="${isMember}">
                                    <input type="text" class=" placeholder"
                                       placeholder="아이디를 입력해주세요" required name="id"
                                       title="아이디를 입력하세요" autocomplete="new-password">
                                 </c:if>
                                 <c:if test="${!isMember}">
                                    <input type="text" class=" placeholder"
                                       placeholder="아이디를 입력해주세요" required value="${id}" name="id"
                                       title="아이디를 입력하세요" autocomplete="new-password">
                                 </c:if>
                                 <button type="button" class="amugeona" name="dbCheckId"
                                    onclick="javascript:idCheck(joinform.id.value,joinform.pw.value,joinform.confirmPassword.value,joinform.name.value,joinform.tel2.value,joinform.tel3.value,joinform.email1.value)">중복
                                    확인</button>
                              </p>
                           </li>
                           <li>
                              <p class="tit">비밀번호</p>
                              <p class="form">
                                 <input type="password" name="pw" id="pass"
                                    placeholder="비밀번호를 입력 해주세요" required
                                    oninput="validatePassword()"> <span
                                    id="passwordMessage" style="color: red;"></span>
                              </p>
                              <p class="caution caution_email" style="padding-top: 10px;">※비밀번호는 8자리 이상이어야 하며,<br> 특수문자를 하나 이상 포함해야 합니다.</p>
                        
                           </li><br><br>
                           <li>
                              <p class="tit">비밀번호 확인</p>
                              <p class="form">
                                 <input type="password" name="confirmpassword"
                                    id="confirmPassword" placeholder="비밀번호를 확인 해주세요" required
                                    oninput="validatePasswordok()"><br> <img
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RxtQjxVoAA0eMhyRc9t5Uwt5WulTBRcnHGquZiw-CR1d000GQ4uW1cFkuhDhU9PLjpw&usqp=CAU"
                                    width="22" height="22" id="check"
                                    onclick="togglePassword();"
                                    style="margin-left: 260px; margin-top: -25px;"><br>
                                 <span id="confirmPasswordMessage" style="color: red;"></span>
                              </p>
                           </li>
                           <li>
                              <p class="tit">이름</p>
                              <p class="form">
                                 <input type="text" name="name" value="${name}" required
                                    placeholder="이름을 입력하세요" autocomplete="new-password">

                              </p>
                           </li>
                           <li>
                              <p class="tit">휴대전화</p>
                              <ul class="form-tel">
                                 <li><select name="tel1">
                                       <option value="010">010</option>
                                       <option value="011">011</option>
                                 </select></li>
                                 <li><input type="text" maxlength="4" title="휴대전화 앞자리"
                                    value="${tel2}" id="tel2" name="tel2"
                                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                    autocomplete="new-password" required></li>
                                 <li><input type="text" maxlength="4" title="휴대전화 뒷자리"
                                    name="tel3" id="tel3" value="${tel3}"
                                    oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                    autocomplete="new-password" required></li>
                              </ul>
                                 <p class="caution caution_email" style="padding-top: 10px;">※숫자만 입력 가능합니다.</p>
                           </li>

							<li>
							    <p class="tit">주소</p>
								<input type="text" id="postcode" name="postcode" class="d_form mini" placeholder="우편번호" required>
								<input type="button" class="d_btn" onclick="DaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" class="d_form large" name="address" id="address" placeholder="주소" required><br>
								<input type="text" class="d_form" id="detailAddress" name="detailAddress" placeholder="상세주소" required>
								
								<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
   									 <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAeFBMVEX///8AAADPz8+WlpZbW1v5+flUVFReXl78/PyMjIxYWFjx8fFRUVHk5OTg4OD29vYqKiq5ublLS0vq6up8fHzX19eBgYE3NzdkZGRpaWmrq6vQ0NAjIyM2Nja1tbXIyMhAQEAZGRmhoaEnJycRERF9fX10dHQbGxthaQBsAAAGeElEQVR4nO2da0PyOgzHQd3j5mBuA4QBTrwc/P7f8BzlgDws7dKubUrM77Wd/ZNe0qSX0UgQBEEQBEEQBEEQhF9PkuTF4sYviyJPEgJt6bTKmuU4FMsmq6aP4eTNqv1zMHE/lE07CyEvbf8QqDtSt6lnfcWcUN6BfeFR32ZFLe+b+40nfdN7amkn7n3YMX2ilvUXT87748sHtaYLPl6c6ovMgAdcmnEWbm434dnZ9PhCLUWJo5a6ptahYe1C4C21Ci23wwVm1Bp6yHhb8IuBVoy5Dx4Z1BfjHUXPGTCizqjrjsR6Xkz7JvrtZDXPbv2SzVeTbU89lrbejd5Va9ZFbvvbGZIX60Zblye77+o64bINGDX55rHVtSirrpiqVxMTX0tQPZsHZY0+bNqpso2WbtctJryUqkpZtNOp8lsU0csjifJ3nxp/SxWyqDzU24RKUa970w9tFB/yGejCoWpcpmMDHFV7DxKS7WH2DtZtZfaVAv6dYhCodLXMmhcc+DXvzX6Af/+5ySdS8BPUg8wP8HBjMie20AcsXSMv/ANVsDX4QA2ULynnwUsSyBmf4MuDXZnOk4EA2yl+IISK//FYXRsmQB3xAwW0VKFxttVAK58GWzgBMrxLn7W1AqjkM3aogPyieGaKI9B4j52woW4YesHbz+MAOwBBYHQLDwgwWmDDw0BRJ/kBxwCxXKwhgIAI/aKpC+Cd7nAlk27Jbaiomgk54NfgBlNAoYE/FBDAt8QpzLsFDVeXgQBW6bi2BrRvo6VXMIBFLG68WHQLDk7SeQGY1RaogkAQykGm1QNAbhPnPd9cscIbVEFRGA2iUIkojAZRqEQU9pLkdjsH0twsJEukcJrttq9l/WYa9nh8q8vX7S4zyI2QKEz2pzJv+Kr+x9up3B5tSAqFs/M8u0lW9jzjXGJD1wQKk783Etwha3qZUsdmSAgU7i+KPeCKje4uyu1xxcIr7EaScdGPbgoCN9yEVwisSDFWBPYB4Vbc4RXuugURfRHa1rJD/b/gCsGsZa8VwZ1c76ixJrjC/BWqbE9fhNKA4/EnKmYWXGGq2HSma6iXo+j/lKiKhu+HUPZfL1EhcFxHqvCtW/CAqqHCTXSMTQSFVwhl9A7AmwDU20VxbjuBT6M0IthQ1Qc2kU47heetrnR30lD1QXyWhGT1pJZ42ReVfRDvsNOsgNWWebD6u/gUjtSn9c9tg7d1fAo11vkZUdWjKN6ChJGofvvg7ByvQo2F7np+ArPNc4TxUr2NnPRBYoU6EamjJkqsUCNRjalA4qi++RUv5jtaiPMW6uEGxmKHLnVmxqyhGjfREb1CzdTfxWSiP0Gu0KAv2u0qo1eItqKVBaNQiOyLNn3wixgUokZU63MOUShE9EX7nZ1xKOxtqLZNdBSNwh6JAwRGo1DbUAdtPo5GoeZgv9GRwQ7RKGRvQ/b9kP1Yyn4+ZO/TsPdL2a8t2K8P2a/x2cdp2Mfa2MdL2ce82ect9Dl6Brkn9vlD9jlg9nl83D6ZK96LwX4/Dfs9UW72tWGPosjeRPcK+e8v5b9HmP0+b/579a3OW8AOXKTnLRyemdnGeWaG/7mnX3B2jf/5Q/5nSF2dA8Zef0h+ltvk+qxrOcv9C87jjw53KnyW9dr4ToV1XX5ewZ0K3yS2N/Rdx70YARGFSkRhNIhCJaIwGkShEv53X/K/v5T/HbT87xHmfxc0//u8+d/J/gvu1ef/NgL/9y2gN0pM3lIKw5A3Sq7jnRlgPES/M3MVbwUB6wOD0YL/e0/83+zi/+5a/G/nge8zmoz3/N8/VLxhGYt36uANy6t8h9TwDVH2b8n+gveAr+5NZ/NAi/Jd7jnpu9zgE6tfWLzkq3zje0tnxgrugmO7yVpzjL6m8eBu1KcYXq0O9kMvfR55bkMviR9bYLl0wvInV7bTb5p1ESoClxdraEH3g61Dmep+tS+29Wqe3folm69qcNPjGUvryycUzkN0DPBDdF0xHgaNe0BMMjoGxnKBHF1kDM5tAuHhqHCQ2ozbik6y0zH3RUf5lHhHVGfe4wzahU/P0uF6PNU7cDQ8DbpGq8PLJ7WgCz6cr28iM6NjAx6Y2VwF4YeVxYoexQaOwIVm5TMPVsCh4pDsfdnvSNqaX8zijrr10f86zKoGyBJ7p2yqgAHpdFplTTg/YNdk1ZRis0SS5MXixi+LIk9iylwKgiAIgiAIgiAIgkDEv/UpbyE4R4AQAAAAAElFTkSuQmCC" id="btnCloseLayer" 
   									 style="position:absolute;cursor: pointer;right:0px;top:50px;z-index:1; width:40px; height:40px" onclick="closeDaumPostcode()" alt="닫기 버튼">
								</div>
							</li>
							

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
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();

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
							<br><br>
                           <li>
                              <p class="tit">이메일</p>
                              <ul class="form-email" style="width: 500px;">
                                 <li><input type="text" name="email1" id="email1"
                                    autocomplete="new-password" required> <span>@</span>
                                 </li>
                                 <li><input type="text" name="email2" id="email2"
                                    autocomplete="new-password" disabled value="naver.com">
                                 </li>


                                 <li><select name="selectEmail" id="selectEmail">

                                       <option value="naver.com">naver.com</option>
                                       <option value="gmail.com">gmail.com</option>
                                       <option value="kakao.com">kakao.com</option>
                                       <option value="1">직접 입력</option>
                                 </select></li>
                                 <li>
                                    <button onclick="emailVerification()"
                                       style="border-bottom: solid 0px #9d9d9d; border: 1px solid #000;">
                                       <p class="tit" align="center">이메일 인증</p>
                                    </button>
                                 </li>
                              </ul>
                              <p class="caution caution_email" style="padding-top: 10px;">※영문,숫자만
                                 입력 가능합니다.</p>
                           </li>
                           <br>
                           <br>
                           <c:if test="${mode == 'YC'}">
                              <li>

                                 <p class="tit">예상 창업 비용</p>
                                 <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                       name="flexRadioDefault" id="flexRadioDefault1"
                                       value="5천만원 미만" checked> <label
                                       class="form-check-label" for="flexRadioDefault1">
                                       5천만원 미만 </label>
                                 </div>
                                 <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                       name="flexRadioDefault" id="flexRadioDefault2"
                                       value="5천만원 이상"> <label class="form-check-label"
                                       for="flexRadioDefault2"> 5천만원 이상 </label>
                                 </div>
                                 <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                       name="flexRadioDefault" id="flexRadioDefault3"
                                       value="1억 미만"> <label class="form-check-label"
                                       for="flexRadioDefault3"> 1억 미만 </label>
                                 </div>
                                 <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                       name="flexRadioDefault" id="flexRadioDefault4"
                                       value="1억 이상"> <label class="form-check-label"
                                       for="flexRadioDefault4"> 1억 이상 </label>
                                 </div>
                                 <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio"
                                       name="flexRadioDefault" id="flexRadioDefault5"
                                       value="1억 5천 이상"> <label class="form-check-label"
                                       for="flexRadioDefault5"> 1억 5천 이상 </label>
                                 </div>

                              </li>
                           </c:if>

                           <c:if test="${mode == 'BA'}">
                              <li>
                                 <p class="tit">인증하기</p>
                                 <ul class="form-email" style="width: 500px;">

                                    <li>
                                       <a onclick="certify(joinform.id.value, joinform.name.value, joinform.tel1.value, joinform.tel2.value, joinform.tel3.value)"
                                          style="border-bottom: solid 0px #9d9d9d; border: 1px solid #000;">
                                          <p class="tit" align="center">인증하기</p>
                                       </a>
                                    </li>
                                 </ul>
                              </li>
                           </c:if>
               </div>

               </li>

               </ul>
               <ul class="btnbox">
                  <li><button type="submit" class="btn-m-red">
                        <span>가입</span>
                     </button></li>
                  <li><button type="button" class="btn-m-line"
                        onclick="javascript:location.href='">
                        <span>취소</span>
                     </button></li>
               </ul>
               <br> <br> <br>
               </fieldset>
               </form>
            </div>
         </div>
         <!-- //join1 -->
   </div>
   <!-- //member -->
   </div>
   <!-- //contents -->
   </section>

   <script>

//한글입력 안되게 처리
$("input[name=email1],input[name=email2]").keyup(function(event){
   if (!(event.keyCode >=37 && event.keyCode<=40)) {
      var inputVal = $(this).val();
      $(this).val(inputVal.replace(/[^a-z0-9@_.-]/gi,''));
   }
});

// 비밀번호와 비밀번호 확인란에는 한글 입력 방지
$("input[name=pw],input[name=confirmpassword]").on('input', function () {
    var inputVal = $(this).val();
    $(this).val(inputVal.replace(/[^a-zA-Z0-9!@#$%^&*]/g, ''));
});
</script>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   </div>
   <!-- //wrap -->


</body>

<%@ include file="../bottom.jsp"%>