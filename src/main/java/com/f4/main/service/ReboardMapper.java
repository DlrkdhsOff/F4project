package com.f4.main.service;



import java.sql.SQLException;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.ReboardDTO;


@Service
public class ReboardMapper {
   
   @Autowired
   private SqlSession sqlSession;
   
   
   public List<ReboardDTO> listReboard(int start, int end, Object id, int kind) {
      Map<String, Object> map = new Hashtable<>();
      map.put("start", start);
      map.put("end", end);
      map.put("id", id);
      map.put("kind", kind);
      return sqlSession.selectList("listReboard", map);
   }
   
   public List<ReboardDTO> ad_listReboard(int start, int end) { 
         Map<String, Integer> map = new Hashtable<>();
         map.put("start", start);
         map.put("end", end);
         List<ReboardDTO> list = sqlSession.selectList("ad_listReboard", map);
         return list;
      }
   
   public int getRecount(Object id) {
      return sqlSession.selectOne("getRecount", id);
   }
   
   public int ad_getRecount() {
         return sqlSession.selectOne("ad_getRecount");
         }
   
   public int plusReadcountt(int num) {   
      return sqlSession.update("plusReadcountt", num);
   
   }
   
   public ReboardDTO getReboard(int num, String mode) {
      if (mode.equals("content")) plusReadcountt(num);
         return sqlSession.selectOne("getReboard", num);
   }
   
   public List<ReboardDTO> getReboard1(int num) {
            return sqlSession.selectList("getReboard", num);
      }
   
   public List<ReboardDTO> replyListBoard(int re_group)  {
      return sqlSession.selectList("replyListBoard", re_group);   
   }
   
   public int insertReboard(ReboardDTO dto) throws SQLException {
      if(dto.getNum() == 0) {
         sqlSession.update("updateNewBoard", dto);
      }else {
         sqlSession.update("updateReBoard", dto);
         dto.setRe_step(dto.getRe_step() + 1);
         dto.setRe_level(dto.getRe_level() + 1);
      }
      int res = sqlSession.insert("insertReboard", dto);
      return res;
      }
   
   public int ad_insertReboard(ReboardDTO dto) throws SQLException {
      int res = sqlSession.insert("ad_insertReboard", dto);
      return res;
      }
   
   public int adContent(String ad_answer, int num, String answer){
      Map<String, Object> content = new Hashtable<>();
      content.put("ad_answer", ad_answer);
      content.put("num", num);
      content.put("answer", answer);
      return sqlSession.update("ad_contentReboard", content);
   }
   
   public List<ReboardDTO> ad_findBoard(String search, String searchString){
      Map<String, String> map = new Hashtable<>();
      map.put("search", search);
      map.put("searchString", searchString);
      return sqlSession.selectList("ad_findBoard", map);
   }
   
   public List<ReboardDTO> findBoard(String search, String searchString, Object id){
      Map<String, Object> map = new Hashtable<>();
      map.put("search", search);
      map.put("searchString", searchString);
      map.put("id", id);
      return sqlSession.selectList("findBoard", map);
   }
   
   public int updateKakaoReboard(String id) {
      return sqlSession.update("updateKakaoReboard", id);
   }
   
   public int updateNaverReboard(String id) {
      return sqlSession.update("updateNaverReboard", id);
   }
}
      
      
   
   
   
   
   
   