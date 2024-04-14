package com.f4.main.dto;

import lombok.Data;

@Data
public class ConnectionDTO {
	
	private String roomNum;
	private String sender;
	private String connecting;

}


//create table connection(
//roomNum varchar2(100) not null,
//sender varchar2(100) not null,
//connecting varchar2(100) not null
//);