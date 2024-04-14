package com.f4.main.service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.SaupDTO;


@Service
public class SaupMapper {
   
   
   @Autowired
   private SqlSession sqlSession;
   
   public int insertSaup(Map<String, String> params) {
      return sqlSession.insert("insertSaup", params);
   }
   
   public int insertsaup(SaupDTO dto) {
      return sqlSession.insert("insertsaup", dto);
   }
   
   public List<SaupDTO> getSaupList() {
      return sqlSession.selectList("getSaupList");
   }
   
   public List<SaupDTO> getSaupDetail(String id) {
      return sqlSession.selectList("getSaupDetail", id);
      
   }
   
   public int getSaupUpdate(Map<String, String> params) {
      int res = sqlSession.update("getSaupUpdate", params);
      return res;
   }
   
   public int getSaupUpdateAll(Map<String, String> params) {
      int res = sqlSession.update("getSaupUpdateAll", params);
      return res;
   }
   
   public MemberDTO checkSa(Object id) {
      return sqlSession.selectOne("checkBnr", id);
      
   }
   
   public String getSaupAccept(String id) {
      return sqlSession.selectOne("getSaupAccept", id);
   }
}