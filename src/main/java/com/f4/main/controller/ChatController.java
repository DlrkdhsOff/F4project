
package com.f4.main.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.f4.main.dto.ChatMemberDTO;
import com.f4.main.dto.ChattingDTO;
import com.f4.main.service.ChatMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ChatController {
	
	@Autowired
	private ChatMapper chatmapper;
	

	@GetMapping("/brandChat.do")
	public String brandChat(HttpServletRequest req, Model model) {
	    HttpSession session = req.getSession();
	    String sender = (String) session.getAttribute("loginId");
	    String receiver = req.getParameter("receiver");
	    String roomNum = chatmapper.getRoomNum(sender, receiver);
	    
	    String connecting = chatmapper.getConnection(sender, roomNum);
	    if(connecting == null) {
	    	chatmapper.setConnection(sender, roomNum);
	    	chatmapper.setConnection(receiver, roomNum);
	    }	    
	    
	    model.addAttribute("sender", sender);
	    model.addAttribute("receiver", receiver);
	    model.addAttribute("roomNum", roomNum);
	    return "brandChat/brandChat";
	}

	
	
	@GetMapping("/brandChatList.do")
	public String brandChatList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
	    String sender = (String) session.getAttribute("loginId");
	    List<ChattingDTO> finalList = new ArrayList<>();
	    List<ChatMemberDTO> list = chatmapper.getList(sender);
	    for (ChatMemberDTO dto : list) {
	    	ChattingDTO chatdto = new ChattingDTO();
    	    // dto에서 방 번호를 사용하여 추가 정보를 가져옴
    	    String messages = chatmapper.getChat(dto.getRoomNum());
    	    if(messages != null) {
    	    	if (messages.length() > 20) {
        	    	messages = messages.substring(0, 25);
        	    	messages += "...";
        	    	
                }
    	    }
    	    chatdto.setMessage(messages);
	        chatdto.setSender(dto.getReceiver()); // sender 설정
	        finalList.add(chatdto); // 리스트에 추가
    	}
	    model.addAttribute("list", finalList);
		
		return "brandChat/brandChatList";
	    
	}
	
	@GetMapping("/getChatData.do")
	public ResponseEntity<?> getOrCreateChatRoom(@RequestParam String sender, @RequestParam String receiver, @RequestParam String roomNum) {
		String connecting = chatmapper.getConnection(receiver, roomNum);
	    if(connecting.equals("online")) {
	    	chatmapper.update_Connection(sender, roomNum);
	    }
		
	    List<ChattingDTO> messages = new ArrayList<>();
	    messages.addAll(chatmapper.getData(roomNum));
	    
	    messages.sort(Comparator.comparing(ChattingDTO::getSendTime));
	    // 메시지를 시간 순서대로 정렬
	    Map<Object, Object> response = new HashMap<>();
	    response.put("messages", messages);
	    response.put("connecting", connecting);
	    
	    return ResponseEntity.ok(response);
	}
}

