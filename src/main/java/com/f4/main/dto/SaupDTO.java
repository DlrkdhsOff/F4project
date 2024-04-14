package com.f4.main.dto;
import lombok.Data;

@Data
public class SaupDTO {
   private String id;
   private String name;
   private String tel;
   private String place;
   private String store;
   private String memo;
   private String accept;

   
   
   
	
//	  CREATE TABLE saup ( id VARCHAR(20) PRIMARY KEY NOT NULL, name VARCHAR(100)
//	  NOT NULL, tel VARCHAR(20) NOT NULL, place VARCHAR(20) NOT NULL, store
//	  VARCHAR(20) NOT NULL, memo VARCHAR(1000) NOT NULL, accept VARCHAR(5) );
	 
}