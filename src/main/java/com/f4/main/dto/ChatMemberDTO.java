package com.f4.main.dto;

import lombok.Data;

@Data
public class ChatMemberDTO {
	
	private String roomNum;
	private String sender;
	private String receiver;

}


//create table chatmember(
//		roomNum varchar2(100) not null,
//		sender varchar2(100) not null,
//		receiver varchar2(100) not null
//		);
