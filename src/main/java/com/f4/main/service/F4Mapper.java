package com.f4.main.service;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.f4.main.dto.MemberDTO;

@Service
public class F4Mapper {
   
   
   @Autowired
   private SqlSession sqlSession;
   
   public boolean checkId(String id) {
      MemberDTO dto = sqlSession.selectOne("checkId", id);
      if (dto == null) return false;
      else return true;
   }
   
   public int insertMember(MemberDTO dto) {
      return sqlSession.insert("insertMember", dto);
   }
   
   public int checkIdAndPassword(java.util.Map<String, String> map){
      return sqlSession.selectOne("checkIdAndPassword",map);
   }
   
   public MemberDTO getMember(String id) {
      return sqlSession.selectOne("getMember", id);
   }
   
   public MemberDTO getReboard(Object id) {
      return sqlSession.selectOne("getMember", id);
   }
   
   public int updateMember(Object loginId) {
      int res = sqlSession.update("updateMember", loginId);
      return res;
   }
   
   public MemberDTO checkSa(Object id) {
      return sqlSession.selectOne("checkBnr", id);
      
   }
   
   public List<MemberDTO> listJtm(){
         return sqlSession.selectList("listJtm");
   }
   
   public String searchMember(java.util.Map<String, String> params) {
	      String msg = null;
	      if (!params.containsKey("id")) {
	         msg = sqlSession.selectOne("searchId", params);
	         if (msg == null) {
	            msg = "아이디 없음";
	         }
	      }else {
	         msg = sqlSession.selectOne("searchPw", params);
	         if (msg == null) {
	            msg = "비밀번호 없음";
	         }
	      }
	      return msg;
	   }
 
   public int updateMember(MemberDTO dto) {
         int res = sqlSession.update("update", dto);
         return res;
      }
   
   public int deleteMember(Object id) {
         return sqlSession.delete("deleteMember", id);
      }
   
   public int updateAdmin(MemberDTO dto) {
         int res = sqlSession.update("updateAdmin", dto);
         return res;
      }
      
      public int deleteAdmin(int no) {
         return sqlSession.delete("deleteAdmin", no);
      }
      
      public int deleteKakao(String name) {
         return sqlSession.delete("deleteKakao", name);
      }
      
      public int updateKakao(String id) {
         int res = sqlSession.update("updateKakao", id);
         return res;
      }
      
      public int updateNaver(String id) {
         int res = sqlSession.update("updateNaver", id);
         return res;
      }
      
      public List<MemberDTO> YclistJtm(){
          return sqlSession.selectList("YclistJtm");
       }
       public List<MemberDTO> BalistJtm(){
          return sqlSession.selectList("BalistJtm");
       }
       
       public int updateprice(String price, String id) {
          Map<String, String> map = new Hashtable<>();
          map.put("price", price);
          map.put("id", id);
          return sqlSession.update("updateprice", map);
       }
       
       public List<MemberDTO> PricelistJtm(String price){
          return sqlSession.selectList("PricelistJtm", price);
       }
       
       public int updatememberkind(String id) {
           return sqlSession.update("updatememberkind", id);
        }
}