<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script></script>
<title>타자 치듯이 나오는 UI</title>
<style>
/* css 사이트 */ 
@keyframes typing {
  from { width: 0; }
  to { width: 100%; }
}

#chatbox::placeholder {
  animation: typing 2s steps(40, end);
  overflow: hidden;
  white-space: nowrap;
  border-right: 2px solid; /* 타이핑 커서 역할을 하는 효과를 주기 위해 테두리를 사용합니다. */
}
x

body {
   background-color: #f8f8f2; /* Soft background for the whole page */
   color: #282a36; /* Dark text for contrast and readability */
   align-items: center;
   justify-content: center;
   height: 100vh;
   margin: 0;
   font-family: Arial, sans-serif;
}

#bodybox {
  display: flex;
  flex-direction: column;
  justify-content: flex-end; /* Aligns content to the bottom */
  margin: auto;
  max-width: 550px;
  font: 15px arial, sans-serif;
  background-color: white;
  border-style: solid;
  border-width: 1px;
  padding-top: 20px;
  padding-bottom: 25px;
  padding-right: 25px;
  padding-left: 25px;
  box-shadow: 5px 5px 5px grey;
  border-radius: 15px;
}

#chatborder {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    max-height: 500px; /* or any other maximum value */
    border-style: solid;
    background-color: #eef2ff; /* Lighter background for the chat area */
    border-color: #6272a4; /* Soft purple border to match the button */
    border-width: 3px;
    margin-top: 50px; /* Increase this value to move down */
    margin-bottom: 20px;
    margin-left: 20px;
    margin-right: 20px;
    padding-top: 10px;
    padding-bottom: 15px;
    padding-right: 20px;
    padding-left: 15px;
    border-radius: 15px;
    overflow-y: auto; /* 스크롤 추가 */
}


.chatlog {
   font: 15px arial, sans-serif;
}

#chatbox {
    width: calc(100% - 30px); /* Adjust the width if you have padding */
    margin-top: 10px;
    font: 17px arial, sans-serif;
    height: 22px;
    width: 99%;
}

h1 {
  margin: auto;
}

pre {
  background-color: #f0f0f0;
  margin-left: 20px;
}

button {
    background-image: linear-gradient(to right, #4e54c8, #8f94fb); /* A modern gradient effect */
    color: white; /* Text color */
    padding: 10px 20px; /* Padding around the text */
    border: none; /* Remove border */
    border-radius: 17px; /* Rounded corners */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
    font-size: 14px; /* Adjust font size */
    font-family: 'Arial', sans-serif; /* Stylish and readable font */
    cursor: pointer; /* Change cursor to indicate button */
    transition: transform 0.2s ease, box-shadow 0.2s ease; /* Smooth transitions for hover effects */
}

button:hover {
    transform: translateY(-2px); /* Slight lift when hovered */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3); /* Enhanced shadow when hovered */
}

#buttonContainer {
    width: 100%;
    display: flex;
    justify-content: space-around; /* This will space out your buttons */
    margin-top: 10px; /* Adjust as needed */
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
  <div id='chatborder'>
    <div id="messageContainer"></div> <!-- 메시지를 위한 새 컨테이너 -->
    <button id="recommendButton" style="display:none;">가맹점 추천</button>
	<button id="searchButton" style="display:none;">평균 창업비용검색</button>
    <input type="text" name="chat" id="chatbox" placeholder="무엇이 궁금하신가요?" onfocus="placeHolder()">
    

  </div>
<script>
	var messages = [], // 배열, 채팅의 각 문자열 기록 저장
		lastUserMessage = "", // 사용자의 가장 최근 입력 문자열 추적
		botMessage = "", // 채팅봇이 말할 내용
		botName = '가봇', // 채팅봇의 이름
		talking = true; // false 일 때 음성 기능 작동 안 함
		select = "";
	
	//채팅봇 응답 함수
function chatbotResponse() {
   talking = true;
   botMessage = "무슨 말인지 잘 모르겠어요 다시 말씀해주세요"; // 기본 메시지

   if (lastUserMessage === '안녕' || lastUserMessage === '안녕하세요' || lastUserMessage === '하이') {
       botMessage = '안녕하세요';
       updateBotMessage();
   }
   else if (lastUserMessage.includes('이름이 뭐야') || lastUserMessage.includes('너의 이름은')) {
       botMessage = '제 이름은 ' + botName + '입니다';
       updateBotMessage();
   }
   else {
	   $.ajax({
           type: "POST",
           url: "aichat_request.do",
           data: { message: lastUserMessage, select : select },
           success: function(response) {
        	    var aiData = response.aiList;
        	    var check = response.none;
        	    var avg = response.avgAnswer;

        	    if (check) {
        	    	if(aiData){
        	    		botMessage = "네 알겠습니다. 입력하신 정보대로 추천 해드릴게요!";
            	        updateBotMessage();

            	        aiData.forEach(function(msg) {
            	            // Assuming msg is an object with properties you're trying to access.
            	            // Also assuming msg has an id or a unique identifier you can use as a parameter for the URL.
            	            botMessage = "<br><b>브랜드명:</b> <a href='bunsukDetail.do?bnum=" + msg.bnum + "'>" + msg.storeName  + "</a>" + // Make sure property names match and add an anchor tag
            	            "<br><b>주소:</b> " + msg.address +
            	            "<br><b>창업비용:</b> " + msg.total;
            	            updateBotMessage();
            	        });
        	    	}else if(avg){            	        
            	        botMessage = "<b>" + avg + " </b> ";
            	        updateBotMessage();
        	    	}else{
        	    		botMessage = "카테고리를 선택해주세요";
            	        updateBotMessage();
        	    	}
        	        
        	        
        	    } else {
        	        botMessage = "죄송합니다. 검색 결과를 찾지 못했어요 다시 입력해주세요";
        	        updateBotMessage();
        	    }

        	    // Update chat log here
        	    updateChatLog();
        	    document.getElementById("recommendButton").style.display = "block";
        	    document.getElementById("searchButton").style.display = "block";
        	},
        	error: function(xhr, status, error) {
                // 오류 처리
                console.error("Error: " + error);
                botMessage = "죄송합니다, 오류가 발생했습니다.";
                updateBotMessage();
                document.getElementById("recommendButton").style.display = "block";
                document.getElementById("searchButton").style.display = "block";
            }
        });
       
    }
}

function updateBotMessage() {
    messages.push("<b>" + botName + " :</b> " + botMessage);
    updateChatLog();
    Speech(botMessage);
}

// 채팅 로그 업데이트 함수
function updateChatLog() {
    var messageContainer = document.getElementById("messageContainer");
    messageContainer.innerHTML = ""; // 메시지 컨테이너만 초기화

    // 모든 메시지를 메시지 컨테이너에 추가
    messages.forEach(function(message) {
        var messageElement = document.createElement("p");
        messageElement.innerHTML = message;
        messageElement.classList.add("chatlog");
        messageContainer.appendChild(messageElement);
    });

    // 스크롤을 가장 아래로 이동
    var chatBorder = document.getElementById("chatborder");
    chatBorder.scrollTop = chatBorder.scrollHeight;
}

// 새로운 입력 처리 함수
function newEntry() {
    if (document.getElementById("chatbox").value != "") {
        lastUserMessage = document.getElementById("chatbox").value;
        document.getElementById("chatbox").value = "";
        messages.push("<b> 나 :</b> " + lastUserMessage);
        chatbotResponse();
        // updateChatLog 함수 호출은 chatbotResponse 내부에서 수행됩니다.
    }
}
	
//음성 출력 함수
function Speech(say) {
	if ('speechSynthesis' in window && talking) {
	    var utterance = new SpeechSynthesisUtterance(say);
	    speechSynthesis.speak(utterance);
	}
}

//키보드 이벤트 처리 함수
document.onkeypress = function keyPress(e) {
	var x = e || window.event;
	var key = (x.keyCode || x.which);
		if (key == 13 || key == 3) {
		    newEntry();
		}
		if (key == 38) {
		    console.log('hi');
		}
};

//Placeholder 설정 함수
function placeHolder() {
	document.getElementById("chatbox").placeholder = "";
}


function handleButtonClick(actionType) {
	document.getElementById("recommendButton").style.display = "none";
    document.getElementById("searchButton").style.display = "none";
    // Assuming you want to do different things based on the button clicked
    if (actionType === 'recommend') {
        
        select = 'recommend';
    } else if (actionType === 'search') {
        // Handle search action
    	select = 'search';
    }
    
}

window.onload = function() {
    document.getElementById("recommendButton").style.display = "block";
    document.getElementById("searchButton").style.display = "block";
};


document.getElementById("recommendButton").addEventListener("click", function() {
    handleButtonClick('recommend');
});

document.getElementById("searchButton").addEventListener("click", function() {
    handleButtonClick('search');
});

</script>
</body>
</html>