package com.f4.main.dto;

import lombok.Data;

@Data
public class ChattingDTO {
	
	private String roomNum;
	private String sender;
	private String message;
	private String sendTime;
	private String connection;

}

//create table chatting(
//		roomNum varchar2(100) not null,
//		sender varchar2(100) not null,
//		message varchar2(4000) not null,
//		sendTime varchar2(100) not null,
//		connection varchar2(100) not null
//		);
