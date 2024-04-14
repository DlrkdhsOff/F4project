package com.f4.main.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.f4.main.service.ChatMapper;

@Component
public class SocketHandler extends TextWebSocketHandler {

    @Autowired
    private ChatMapper chatmapper;
    
    // roomId를 키로 하고, 해당 채팅방의 모든 WebSocketSession을 값으로 하는 맵
    private Map<String, List<WebSocketSession>> sessionMap = new ConcurrentHashMap<>();
    
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        super.afterConnectionEstablished(session);
        String sender = getSender(session);
        // 송신자 Id
        String roomNum = getRoomNum(session);
        // 현재 채팅방 번호
        String receiver = getReceiver(session);
        // 수신자 Id
        sessionMap.putIfAbsent(roomNum, new ArrayList<>());
        // sessionMap에 roonNum이 없으면 새로 등록, 있으면 그대로 진행
        sessionMap.get(roomNum).add(session);
        
        // 현재 웹소켓에 접속항 송신자 상태를 online로 변경
        chatmapper.update_Connection_Online(sender, roomNum);
        
        // 수신자가 보낸 메시지를 확있 완료
        chatmapper.update_Connection(receiver, roomNum);
        
        //jsp로 웹소켓에 수신자가 접속했는 정보를 전달
        broadcastUserInfo(roomNum, sender, "online");
    }

    private void broadcastUserInfo(String roomNum, String sender, String status) {
    	List<WebSocketSession> sessions = sessionMap.getOrDefault(roomNum, new ArrayList<>());
        for (WebSocketSession wss : sessions) {
            if (wss.isOpen() && !getSender(wss).equals(sender)) { // 현재 접속한 사용자를 제외하고 메시지 전송
                try {
                    wss.sendMessage(new TextMessage(sender + ":" + status));
                } catch (IOException e) {
                    // 로깅하거나 사용자에게 오류를 알릴 수 있습니다.
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // socket 연결후 로직
    public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String payload = message.getPayload();
        String[] parts = payload.split(":", 5);

        if (parts.length == 5) {
            String sender = parts[0];
            String receiver = parts[1];
            String msg = parts[2];
            String roomNum = parts[3];
            String time = parts[4];
            
            
            String connecting = chatmapper.getConnection(receiver, roomNum);
            List<WebSocketSession> sessions = sessionMap.getOrDefault(roomNum, new ArrayList<>());
            
            // 현재 수신자의 상태가 online일때
            if (connecting.equals("online")) {           
            	chatmapper.insertData(sender, msg, roomNum, " ");
                for (WebSocketSession wss : sessions) {
                    if (wss.isOpen()) {
                        wss.sendMessage(new TextMessage(sender + ":" + msg + ":" + time + ":" + "online"));
                    }
                }
               
             // 현재 수신자의 상태가 online일때    
            } else if(connecting.equals("offline")) {
            	chatmapper.insertData(sender, msg, roomNum, "1");
            	for (WebSocketSession wss : sessions) {
                    if (wss.isOpen()) {
                        wss.sendMessage(new TextMessage(sender + ":" + msg + ":" + time + ":" + "offline"));
                    }
                }
            }       	
            
        }
    }

    @Override // socket 연결 종료
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        // 연결 종료 시 세션을 roomMap에서 제거
        String roomNum = getRoomNum(session);
        String sender = getSender(session);
        List<WebSocketSession> sessions = sessionMap.get(roomNum);
        if (sessions != null) {
            sessions.remove(session);
            if (sessions.isEmpty()) {
            	sessionMap.remove(roomNum);
            }
        }
        chatmapper.update_Connection_Offline(sender, roomNum);
        super.afterConnectionClosed(session, status);
    }

    private Map<String, String> parseQueryParams(WebSocketSession session) {
        Map<String, String> params = new HashMap<>();
        String query = session.getUri().getQuery();

        // 쿼리 스트링을 '&' 기준으로 분리하여 각 파라미터를 배열로 변환
        String[] array = query.split("&");

        // 각 파라미터를 '=' 기준으로 분리하여 키와 값으로 매핑
        for (String param : array) {
            String[] keyValue = param.split("=");
            if (keyValue.length > 1) { // 키와 값이 모두 있는 경우에만 맵에 추가
            	params.put(keyValue[0], keyValue[1]);
            }
        }

        return params;
    }

    private String getSender(WebSocketSession session) {
        Map<String, String> params = parseQueryParams(session);
        return params.get("sender");
    }

    
    private String getRoomNum(WebSocketSession session) {
        Map<String, String> params = parseQueryParams(session);
        return params.get("roomNum");
    }
    
    private String getReceiver(WebSocketSession session) {
        Map<String, String> params = parseQueryParams(session);
        return params.get("receiver");
    }

    
}
