package com.f4.main.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.f4.main.dto.AiChatDTO;
import com.f4.main.dto.BrandDTO;
import com.f4.main.service.AiChatMapper;
import com.f4.main.service.SangkwonData;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Ai_ChatController {
	
   @Autowired
   private SangkwonData sangkwondata;	
   
   @Autowired
   private AiChatMapper aiChatMapper;
   
   
   @RequestMapping("/Aichat.do")
   public String aichat() {
      return "ai_chat/aichat";  
   }
   
   @PostMapping(value = "/aichat_request.do")
   public ResponseEntity<?> aichat_request(@RequestParam("message") String message, @RequestParam("select") String selected, HttpServletRequest req) {
       Map<String, Object> response = new HashMap<>();
       String text = message;
       String select = selected;
       String answer = null;
       boolean none = true;
       int Avg = 0;
       String categories = null;
       List<AiChatDTO> aiList = new ArrayList<>();
       List<BrandDTO> list = new ArrayList<>();
       
       String address = extraction(text, sangkwondata.getArea(), sangkwondata::getDistrict);
       String categorie = extraction(text, sangkwondata.getCategories(), sangkwondata::getCategories); 
       String storeName = extraction(text, sangkwondata.getStoreNames(), sangkwondata::getStoreName);
       String total = extractTotal(text);

       
       if (select.equals("recommend")) {
    	   boolean allNull = Pattern.compile("창업").matcher(text).find() && address == null && categorie == null && storeName == null && total == null;
           list = allNull ? aiChatMapper.getBrandData_AllNull() : aiChatMapper.getBrandData(address, categorie, storeName, total);
           
           if (list.isEmpty() || list == null) {
               none = false;
           } else {
               for (BrandDTO dto : list) {
                   AiChatDTO aidto = new AiChatDTO();
                   aidto.setStoreName(dto.getStoreName());
                   aidto.setAddress(dto.getAddress());
                   aidto.setCategorie(dto.getTablename());
                   aidto.setName(dto.getName());
                   aidto.setBnum(dto.getBnum());
                   String avgStr = String.valueOf(dto.getTotal());
                   
                   if (avgStr.length() == 7) {
                	   char charAt0 = avgStr.charAt(0);
                	   char charAt1 = avgStr.charAt(1);
                	   char charAt2 = avgStr.charAt(2);
                	   
                	   if (charAt2 == '0') {
                		   aidto.setTotal(charAt0 + charAt1 + "억");
                	   }else {
                		   aidto.setTotal(charAt0 + charAt1 + "억" + charAt2 + "천 만원");
                	   }          	   
                	  
                   }else if (avgStr.length() == 6) {
                	   char charAt0 = avgStr.charAt(0);
                	   char charAt1 = avgStr.charAt(1);
                	   
                	   if (charAt1 == '0') {
                		   aidto.setTotal(charAt0 + "억");
                	   }else {
                		   aidto.setTotal(charAt0 + "억" + charAt1 + "천 만원");
                	   }  
                	   
                   }else if(avgStr.length() == 5) {
                	   char charAt0 = avgStr.charAt(0);
                	   char charAt1 = avgStr.charAt(1);
                	   
                	   if (charAt1 == '0') {
                		   aidto.setTotal(charAt0 + "천 만원");
                	   }else {
                		   aidto.setTotal(charAt0 + "천" + charAt1 + "백 만원");
                	   }
                	   
                   }
                   aiList.add(aidto);
               }
               response.put("aiList", aiList);
               response.put("answer", null);
           }
           
       }else if(select.equals("search")) {
    	   boolean How_much = Pattern.compile("창업|얼마|비용").matcher(text).find() && address == null && categorie == null && storeName == null && total == null;
           Avg = How_much ? aiChatMapper.getBrandData_All_Total() : aiChatMapper.getBrandData_Total(address, categorie, storeName);
           
           if (Avg == 0) {
        	   none = false;
           }else {
        	   String avgStr = String.valueOf(Avg);
               if (avgStr.length() == 7) {
            	   char charAt0 = avgStr.charAt(0);
            	   char charAt1 = avgStr.charAt(1);
            	   char charAt2 = avgStr.charAt(2);
            	   
            	   if (charAt2 == '0') {
            		   answer  = "평균 창업비용은 " + charAt0 + charAt1 + "억" + " 입니다.";
            	   }else {
            		   answer  = "평균 창업비용은 " + charAt0 + charAt1 + "억" + charAt2 + "천 만원 입니다.";
            	   }          	   
            	  
               }else if (avgStr.length() == 6) {
            	   char charAt0 = avgStr.charAt(0);
            	   char charAt1 = avgStr.charAt(1);
            	   
            	   
            	   if (charAt1 == '0') {
            		   answer = "평균 창업비용은 " + charAt0 + "억 입니다.";
            	   }else {
            		   answer = "평균 창업비용은 " + charAt0 + "억" + charAt1 + "천 만원 입니다.";
            	   }  
            	   
            	   
            	   
               }else if(avgStr.length() == 5) {
            	   char charAt0 = avgStr.charAt(0);
            	   char charAt1 = avgStr.charAt(1);
            	   
            	   if (charAt1 == '0') {
            		   answer = "평균 창업비용은 " + charAt0 + "천 만원 입니다.";
            	   }else {
            		   answer = "평균 창업비용은 " + charAt0 + "천" + charAt1 + "백 만원 입니다.";
            	   }
            	   
            	   
               }
               if (address != null) {            	   
            	   if (storeName != null) {
            		   answer = address + " " + storeName + "의 " + answer;
            	   }else if(categorie != null){
            		   answer = address + " " + sangkwondata.getCategorie(categorie) + answer;
            	   }else if(storeName == null && categorie == null){
            		   answer = address + " " + answer;
            	   }
               }else if (storeName != null) {
            	   answer = storeName + "의 " + answer;
               }else if (categorie != null) {
            	   answer = sangkwondata.getCategorie(categorie) + answer;
               }else if (address == null && storeName == null && categorie == null) {
            	   answer = "등록된 가맹점의 " + answer;
               }
               response.put("aiList", null);
               response.put("avgAnswer", answer);
           }
           
       }else {
    	   response.put("aiList", null);
           response.put("avgAnswer", null);
       }
       response.put("none", none);
       
       return ResponseEntity.ok(response);
   }

   public String extractTotal(String text) {
       Matcher matcherNumber = Pattern.compile("\\d+").matcher(text);
       if (matcherNumber.find()) {
           String total = matcherNumber.group();
           String textAfterNumber = text.substring(matcherNumber.end());
           Matcher matcherFirstChar = Pattern.compile("\\S").matcher(textAfterNumber);
           if (matcherFirstChar.find()) {
               String firstCharAfterNumber = matcherFirstChar.group();
               return getTotal(total, firstCharAfterNumber); 
           }
           return total;
       }
       return null; 
   }

   
   public String extraction(String text, String[] array, Function<String, String> params) {
	    for (String arrayText : array) {
	        Pattern pattern = Pattern.compile(arrayText);
	        Matcher matcher = pattern.matcher(text);
	        if (matcher.find()) {
	            return params.apply(matcher.group());
	        }
	    }
	    return null;
	}
   
   
   public String getTotal(String total, String firstCharAfterNumber) {
	   if (firstCharAfterNumber.equals("원")) {
           // total 값의 마지막 3문자를 지웁니다.
           if (total.length() > 8) { // total이 3글자보다 길 때만 수행
               total = total.substring(0, total.length() - 3);
           }
       }else if(firstCharAfterNumber.equals("천")) {
     	  total += "0000";
       }else if(firstCharAfterNumber.equals("만")) {
     	  total += "0"; 
       }else if(firstCharAfterNumber.equals("억")) {
     	  total += "00000";
       }else if(!firstCharAfterNumber.equals("원") && !firstCharAfterNumber.equals("천")
     		  && !firstCharAfterNumber.equals("만") && !firstCharAfterNumber.equals("억") ) {
     	  total += "0";
       }
	   return total;
   }
   
}
