package com.f4.main.dto;


import lombok.Data;

@Data
public class SangkwonDTO {
	
	private String categories;
	private String storeAddress;
	private String storeName;
	private double x; 
   	private double y;		   

}

//create table Sangkwon(
//		categories varchar2(200) not null,
//		storeAddress varchar2(200) not null,
//		storeName varchar2(200) not null,
//		x float not null,
//		y float not null
//		);
