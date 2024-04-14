package com.f4.main.dto;
import lombok.Data;

@Data
public class RankDTO {
	private String storeName;
	private String imglink;
	private int count;

}


//CREATE TABLE Rank ( STORENAME VARCHAR(26), 
//		   IMGLINK  VARCHAR2(1024),
//		   COUNT NUMBER(38)
//		);
