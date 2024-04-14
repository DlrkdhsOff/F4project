package com.f4.main.dto;
import lombok.Data;

@Data
public class BrandDTO {
   private int bnum; 
   private String storeName;
   private String tablename;
   private String name;
   private String tel1;
   private String tel2;
   private String tel3;
   private String address;
   private int area;
   private int storeAreaSales;
   private int averageSales;
   private int squareInteriorCost;
   private int interiorCost;
   private int depositAmount;
   private int education;
   private int otherCosts;
   private int franchiseAmount;
   private int total;
   private String bimage;
   private int wishlist;
   private String id;
   private int su;
   
   public String getAllHp() {
         if (tel1 == null) return "전화없음";
         return tel1+"-"+tel2+"-"+tel3;
   }

}

//CREATE TABLE brand (
//       bnum number primary key,
//       storeName VARCHAR(100) NOT NULL,
//       tablename VARCHAR(100) NOT NULL,
//      su NUMBER NOT NULL,
//       name VARCHAR(100) NOT NULL,
//       tel1 VARCHAR(100) NOT NULL,
//       tel2 VARCHAR(100) NOT NULL,
//       tel3 VARCHAR(100) NOT NULL,
//       address VARCHAR(100) NOT NULL,
//       area number NOT NULL,
//       storeAreaSales number NOT NULL,
//       averageSales number NOT NULL,
//       squareInteriorCost number NOT NULL,
//       interiorCost number NOT NULL,
//       DepositAmount number NOT NULL,
//       education number NOT NULL,
//       OtherCosts number NOT NULL,
//       FranchiseAmount number NOT NULL,
//       total number NOT NULL,
//       bimage VARCHAR(100) NOT NULL,
//       wishlist number,
//       id VARCHAR(100) NOT NULL
//   );
//        
//       create sequence brand_seq;

