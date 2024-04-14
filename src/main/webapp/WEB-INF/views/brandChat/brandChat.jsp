<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
    <title>Chating</title>
<style>
    * {
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	}
	
	body {
	    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	    background-color: #edf2f7;
	    color: #1a202c;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    height: 100vh;
	}
	
	.container {
	    margin: 0 auto;
	    padding: 10px;
	}
	
	.container h2 {
	    text-align: left;
	    padding: 0px 0px 0px 6px;
	    color: #30e39a;
	    margin-bottom: 6px;
	}
	
	.chating {
	    background-color: white;
        width: 462px;
	    height: 510px;
	    overflow: auto;
	}
	
	.chating p {
	    color: black;
	    text-align: left;
	}
	
	input {
	    width: 505px;
	    height: 97px;
	}
	
	#chating {
	    display: flex;
	    flex-direction: column;
	    background-color: #fff;
	    border: 1px solid #e2e8f0;
	    border-radius: 8px;
	    padding: 15px;
	    height: 510px;
	    overflow-y: auto;
	}
	
	/* 메시지 스타일 */
	.message-container {
	    display: flex;
	    align-items: end;
	    margin-bottom: 10px;
	}
	
	/* 오른쪽 메시지와 시간 스타일 */
	.right .message-container {
	    justify-content: flex-end; /* 오른쪽 정렬 */
	    flex-direction: row-reverse; /* 요소 순서 반전 */
	}
	
	/* 왼쪽 메시지와 시간 스타일 */
	.left .message-container {
	    justify-content: flex-start; /* 왼쪽 정렬 */
	}
	
	/* 메시지 스타일 */
	.message {
	    padding: 5px 10px;
	    border-radius: 10px;
	    max-width: 300px;
	    word-wrap: break-word;
	    font-size: 14px;
    	line-height: 1.4;
	}
	
	/* 오른쪽 메시지 */
	.right .message {
	    background-color: #bdccde;
    	color: #1a202c;
	    order: 2;
	    margin-left: inherit;
	    margin-right: 10px;
	}
	
	/* 왼쪽 메시지 */
	.left .message {
	    background-color: #99e7b7;
    	color: white;
	    order: 1;
	    margin-right: unset;
	    margin-left: 1px; /* 왼쪽 메시지와 시간 사이 간격 */
	}
	
	/* 시간 스타일 */
	.time {
	    font-size: 0.75em;
	    color: #a0aec0;
	    padding: 0 10px;
	}
	
	/* 시간 스타일링 조정 */
	.right .time {
	    order: 1;
	    margin-right: 0px; /* 오른쪽 메시지와 시간 사이 간격 */
	    margin-left: 1px;
	}
	
	.left .time {
	    order: 2;
	}
	
	/* 시간 스타일 */
	.read {
	    font-size: 0.65em;
	    color: #a0aec0;
	    padding: -1 10px;
	}
	
	/* 시간 스타일링 조정 */
	.right .read {
     	margin-left: auto;
	    margin-right: 0px; /* 오른쪽 메시지와 시간 사이 간격 */
	}
	
	.left .read {
	    order: 2;
	}
	
	.date-separator {
	    width: 100%; /* 컨테이너 전체 너비 사용 */
	    text-align: center; /* 텍스트를 가운데 정렬 */
	    margin: 10px 0; /* 위아래 여백 추가 */
	    color: #4a5568;
	    font-size: 0.85em;
	    padding: 5px 0; /* 패딩 추가 */
	    background-color: #e2e8f0;
	    border-radius: 10px; /* 테두리 둥글게 */
	}
	
	#sendBtn {
        width: 30px;
	    height: 88px;
	    font-size: 12px;
	    background-color: #9fcac2;
	    border: none;
	    border-radius: 19%; /* Makes the button circular */
	    padding: -1 16px;
	    color: linen;
	    cursor: pointer;
	    transition: background-color 0.2s;
	}
	
	#sendBtn:hover {
	    background-color: #667eea;
	}
	
	.chat-input {
	    flex-grow: 1;
	    border-radius: 10px;
	    border: 1px solid #cbd5e0;
	    width: 429px;
	    height: 95px;
	    min-height: 50px;
	    resize: none;
	    overflow-y: auto;
	    border: 1px solid #ccc;
	    padding: 8px;
	    box-sizing: border-box;
	    font-size: 14px;
	    line-height: 1.5;
	    margin-right: -2px;
	}

</style>
</head>

<script type="text/javascript">
    var ws;
    // 예제용으로 하드코딩된 값이나, 실제로는 서버 사이드 코드로부터 값을 받아와야 합니다.

    var sender = '${sender}';
    var receiver = '${receiver}';
    var roomNum = '${roomNum}';
    var newChat ='ture';
    
    var now = new Date();
    var nowyear = now.getFullYear().toString();
    var nowmonth = (now.getMonth() + 1).toString().padStart(2, '0');
    var nowday = now.getDate().toString().padStart(2, '0');
    var currentDate = nowyear + '-' + nowmonth + '-' + nowday; // 현재 날짜
    var lastDisplayedDate = "";
    var checkResponse = "true";
    
    $(document).ready(function() {
    	chatData();
    	function chatData(){
   			$("#chating").empty();
	        $.ajax({
	            url: '/getChatData.do',
	            type: 'GET',
	            data: { sender : sender, receiver : receiver, roomNum : roomNum },
	            success: function(response) {
	            	wsOpen(sender, roomNum);
	                var messages = response.messages;
	                var connect = response.connecting;
	                
	
	                messages.forEach(function(msg) {
	                    var dateTimeParts = msg.sendTime.split(' ');
	                    var datePart = dateTimeParts[0];
	                    var timePart = dateTimeParts[1];
	                    
	                    var timeParts = timePart.split(':');
	                    var time = timeParts[0] + ':' + timeParts[1]; // "시:분" 형식
	                    
	                    
	                    // 날짜가 마지막으로 출력된 날짜와 다르면 날짜 출력
	                    if (datePart !== lastDisplayedDate) {
	                        $("#chating").append("<div class='date-separator'>" + datePart + "</div>");
	                        lastDisplayedDate = datePart; // 마지막으로 출력된 날짜 업데이트
	                    }
	
	                    // 메시지 출력
	                    var messageContent;
	                    if (msg.sender === sender) {
	                    	if (connect === 'offline'){
	                    		messageContent = "<div class='message-container right'><div class='message right'>" + msg.message + "</div><div class='time'>" + time + "</div><div class='read'>"+msg.connection+"</div></div>";
	                    	}else if (connect === 'online'){
	                    		messageContent = "<div class='message-container right'><div class='message right'>" + msg.message + "</div><div class='time'>" + time + "</div><div class='read'>"+msg.connection+"</div></div>";
	                    	}
	                        
	                    } else {
	                        messageContent = "<p>"+ receiver + "<div class='message-container left'><div class='message left'>" + msg.message + "</div><div class='time'>" + time + "</div></div>";
	                    }
	                    $("#chating").append(messageContent);
	                });
	
	                var chatingDiv = document.getElementById("chating");
	                chatingDiv.scrollTop = chatingDiv.scrollHeight;
	            },
	            error: function(error) {
	                console.log("채팅방 정보 로드 중 오류 발생:", error);
	            }
	        });
	    }
    
    
    
    
	    function wsOpen(sender, roomNum){
	        if (ws && ws.readyState === WebSocket.OPEN) {
	            return; // 이미 열려 있는 경우 새로운 연결을 생성하지 않음
	        }
	        var protocolPrefix = (window.location.protocol === 'https:') ? 'wss://' : 'ws://';
	        var wsUrl = protocolPrefix + location.host + "/chating?sender=" + sender + "&roomNum=" + roomNum +"&receiver=" + receiver;
	        ws = new WebSocket(wsUrl);
	        wsEvt();
	    }
	        
	    function wsEvt() {
	        ws.onopen = function(data){
	            // Connection opened
	            $("#Msg").show();
	        }
	        
	        ws.onmessage = function(event) {
	        	var rawData = event.data;
	        	if (rawData != null && rawData.trim() != '') {
	        	    // rawData를 ":"을 기준으로 분리하여 배열로 만듦
	        	    var parts = rawData.split(':');
	        	
	        	    if (parts.length === 2) {
	        	        // parts 배열의 길이가 2일 경우의 로직
	        	        // 예: senderId와 message만 있을 경우
	        	        var senderId = parts[0];
	        	        var connection = parts[1];
	        	        console.log(senderId, connection);
	        	        if(newChat == 'true'){
	        	        	lastDisplayedDate="";
	        	        	chatData();
	        	        	getList();
	            	        newChat = 'false';
	        	        }
	        	        
	        	    } else {
		        	    // 각 부분을 추출
		        	    var senderId = parts[0];
		        	    var message = parts[1];
		        	    var time = parts[2] + ":" + parts[3]; // 시간 정보 추출
		        	    var connection = parts[4];
		        	    console.log(connection)
		        	    newChat = 'true';
		        	    refreshChatList();
		        	    
		        	    
		        	    // 날짜 확인
		        	    var nowDate = new Date();
		                var year = nowDate.getFullYear().toString();
		                var month = (nowDate.getMonth() + 1).toString().padStart(2, '0');
		                var day = nowDate.getDate().toString().padStart(2, '0');
		                var today = year + '-' + month + '-' + day; // 현재 날짜
		        	    console.log('today : ' + today)
		        	    
		        	    if (today !== lastDisplayedDate) {
		                    $("#chating").append("<div class='date-separator'>" + today + "</div>");
		                    lastDisplayedDate = today;
		                }
		        	    
		
		                // 현재 사용자가 메시지의 발신자인지 확인
		                var messageContent;
		                if (senderId === sender) {
		                	if (connection === "offline"){
		                		messageContent = "<div class='message-container right'><div class='read'>1</div><div class='time'>" + time + "</div><div class='message right'>" + message + "</div></div>";
		                	} else if (connection === "online"){
		                		messageContent = "<div class='message-container right'><div class='read'></div><div class='time'>" + time + "</div><div class='message right'>" + message + "</div></div>";
		                	}                	
		                	 
		                } else {
		                	messageContent = "<p>" + receiver + "<div class='message-container left'><div class='message left'>" + message + "</div><div class='time'>" + time + "</div></div>";
		                }
		                $("#chating").append(messageContent);                
		                var chatingDiv = document.getElementById("chating");
		                chatingDiv.scrollTop = chatingDiv.scrollHeight;
		            }
		        }
	        	
	        }
	
	        document.addEventListener("keydown", function(e){
	            if(e.key === "Enter"){
	                send();
	                e.preventDefault();
	            }
	        });
	    }
	
	    function send() {
	        var msg = $("#chatting").val();
	        if (msg.trim() !== "") {
	            // 현재 시간을 HH:mm:ss 포맷으로 가져오기
	            var nowtime = new Date();
	            var hours = nowtime.getHours().toString().padStart(2, '0');
	            var minutes = nowtime.getMinutes().toString().padStart(2, '0');
	            var time = hours + ':' + minutes;
	
	            // 메시지와 함께 시간을 보내기
	            ws.send(sender + ":" + receiver + ":" + msg + ":" + roomNum + ":" + time);
	            $('#chatting').val(""); // 입력 필드 초기화
	        }
	    }
	    
	    function refreshChatList() {
	        $.ajax({
	            url: 'brandChatList.do', // 채팅 리스트를 불러오는 JSP
	            type: 'GET',
	            success: function(response) {
	                // 채팅 리스트를 갱신하는 코드
	                document.getElementById('brandChatList.do').innerHTML = response;
	            }
	        });
	    }
    });
</script>
<body>
<div id="container" class="container">
        <h2>${receiver}</h2>
        <hr>
        <div id="chating" class="chating">
            <!-- 채팅 메시지들이 여기에 나타날 것입니다 -->
        </div>
        
        <div id="Msg">
            <table class="inputTable">
                <tr>
                    <th>
                        <textarea id="chatting" rows="3" class="chat-input" placeholder="보내실 메시지를 입력하세요."></textarea>
                    </th>
                    <th>
                        <button onclick="send()" id="sendBtn">전송</button>
                    </th>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
