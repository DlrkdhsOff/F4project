package com.f4.main.dto;
import lombok.Data;

@Data
public class MemberDTO {
   private int no;
   private String id; 
   private String pw; 
   private String confirmpassword; 
   private String name; 
   private String tel1; 
   private String tel2; 
   private String tel3; 
   private String postcode;
   private String address;
   private String detailAddress;  
   private String email1;
   private String email2;
   private int Bnr;
   private String joindate;
   private int kind;
   private int memberkind;
   private String price;
  
   public String getTel() {
       if (tel1 == null) return "전화없음";
       return tel1+"-"+tel2+"-"+tel3;
    }
}

// member(회원가입) 테이블


//  CREATE TABLE jtm ( no number PRIMARY KEY, Id varchar(100) not null, pw
//  varchar(20) not null, name varchar(100) NOT NULL, email1 varchar(100) NOT
//  NULL, email2 varchar(100) NOT NULL, tel1 varchar(100) NOT NULL, tel2
//  varchar(100) NOT NULL, tel3 VARCHAR(100) NOT NULL
//   );
//  
//  alter table jtm add Bnr number;
//   
//  
//  alter table jtm add ConfirmPassword varchar2(20); 
//  alter table jtm add joindate varchar2(20); 
//  create sequence jtm_seq; 
//  alter table jtm add kind number;
//   alter table jtm add memberkind number;
//   alter table jtm add price varchar2(30);
//
//	alter table jtm add postcode varchar2(100); 
//	alter table jtm add address varchar2(100); 
//	alter table jtm add detailAddress varchar2(100);
// 



// admin 계정 만들기
// insert into jtm values(0,'admin','admin','관리자',0,0,0,0,0,0,0,0,0,0,0,0,0,0);

