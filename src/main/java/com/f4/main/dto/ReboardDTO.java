package com.f4.main.dto;
import lombok.Data;

@Data
public class ReboardDTO {
   private int num;
   private String writer;
   private String email;
   private String subject;
   private String passwd;
   private String reg_date;
   private int readcount;
   private String content;
   private String ip;
   private int re_group;
   private int re_step;
   private int re_level;
   private String id;
   private String ad_answer;
   private int kind;
   private String answer;
 
}


//create table reboard (
//		  num number primary key, 
//		  writer varchar2(100) not null,
//		  email varchar2(30), 
//		  subject varchar2(100) not null, 
//		  passwd varchar2(12) not  null, 
//		  reg_date varchar2(10) not null, 
//		  readcount number default 0, 
//		  content  varchar2(4000) not null,
//		  ip varchar2(20) not null, 
//		  re_group number, re_step
//		  number, re_level number
//	  );
//	  
//	  alter table reboard add id varchar2(50);
//	    alter table reboard add ad_answer varchar2(1000);
//	  alter table reboard add kind number;
//	  alter table reboard add answer varchar2(20);
//	  
//	  create sequence reboard_seq;
	  
	  
	  