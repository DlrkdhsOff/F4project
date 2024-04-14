package com.f4.main.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.ChatMemberDTO;
import com.f4.main.dto.ChattingDTO;

@Service
public class ChatMapper {
	
	@Autowired
    private SqlSession sqlSession;
	
	// 채팅 내역을 저장하는 메서드
	public int insertData(String sender, String message, String roomNum, String connection){
		Map<String, String> params = new HashMap<>();

		params.put("sender", sender);
		params.put("message", message);
		params.put("roomNum", roomNum);
		params.put("connection", connection);
			
		int	res = sqlSession.insert("insertChatData", params);

		
		return res;
	}
	
	// 채팅 내역을 불러오는 메서드
	public List<ChattingDTO> getData(String roomNum){
		List<ChattingDTO> list = new ArrayList<>();			
		list = sqlSession.selectList("getChatData", roomNum);		
		
		return list;
	}
	
	
	// 채팅한 수신자 list를 불러오는 메서드
	public List<ChatMemberDTO> getList(String sender){
		List<ChatMemberDTO> list = new ArrayList<>();
		list = sqlSession.selectList("getChatList", sender);
		
		
		return list;
	}

	
	public String getChat(String roomNum){
		return sqlSession.selectOne("getChat", roomNum);
	}
	
	public String getmessage(String sender, int roomNum) {
	    Map<String, Object> params = new HashMap<>();
	    params.put("sender", sender);
	    params.put("roomNum", roomNum);
	    
	    return sqlSession.selectOne("getmessage", params);
	}
	
	// 채팅방 관리를 위해 송신자와 수진자의 roomId를 가지고 오는 메서드
	public String getRoomNum(String sender, String receiver) {
	    Map<String, String> params = new HashMap<>();
	    String roomNum = null;
	    
	    params.put("sender", sender);
	    params.put("receiver", receiver);
	    

	    String getRoomNum = sqlSession.selectOne("getRoomNum", params);
	    // 수신자의 roomId를 가지고 오기
	    
	    if (getRoomNum == null) {
	    	// 송/수진자의 roomId가 없을경우
	        String maxRoomNum = sqlSession.selectOne("getMaxRoomNum");
	        // 모든 방의 roomId중 가장 큰 값을 불러오기
	        if (maxRoomNum == null) {
	        	// 모든 채팅 기록이 없을 경우
	            roomNum = "1";
	            params.put("roomNum", roomNum);
	            sqlSession.insert("setRoomNum1", params);
	            sqlSession.insert("setRoomNum2", params);
	        } else {
	            int num = Integer.parseInt(maxRoomNum) + 1;
	            // 현재 데이터베이스에 있는 roomId중 가장 큰 값에 1을 더함
	            roomNum = String.valueOf(num);
	            params.put("roomNum", roomNum);
	            sqlSession.insert("setRoomNum1", params);
	            sqlSession.insert("setRoomNum2", params);
	        }
	    } else if (getRoomNum != null) { // 이 경우 receiverNum이 null이든 아니든 상관 없습니다.
	    	// 현재 로그인 중인 사용자(송신자)만 메시지를 보냈을경우
	        roomNum = getRoomNum;
	    }
	    
	    return roomNum;
	}
	
	public int update_Connection_Online(String sender, String roomNum) {
		Map<String, String> params = new HashMap<>();
		params.put("sender", sender);
		params.put("roomNum", roomNum);
		params.put("connecting", "online");
		return sqlSession.update("update_Connection", params);
	}
	
	public int update_Connection_Offline(String sender, String roomNum) {
		Map<String, String> params = new HashMap<>();
		params.put("sender", sender);
		params.put("roomNum", roomNum);
		params.put("connecting", "offline");
		return sqlSession.update("update_Connection", params);
	}
	
	public int setConnection(String sender, String roomNum) {		
		Map<String, String> params = new HashMap<>();
		params.put("sender", sender);
		params.put("roomNum", roomNum);
		params.put("connecting", "offline");
			
		return sqlSession.insert("setConnection", params);
	}
	
	public String getConnection(String sender, String roomNum) {		
		Map<String, String> params = new HashMap<>();
		params.put("sender", sender);
		params.put("roomNum", roomNum);
	
		return sqlSession.selectOne("getConnection", params);
	}
	
	public int update_Connection(String sender, String roomNum) {
		Map<String, String> params = new HashMap<>();
		params.put("sender", sender);
		params.put("roomNum", roomNum);
		return sqlSession.update("Connection", params);
	}


}
