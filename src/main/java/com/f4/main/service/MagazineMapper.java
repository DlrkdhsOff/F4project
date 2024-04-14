package com.f4.main.service;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.MagazineDTO;


@Service
public class MagazineMapper {
   
   @Autowired
   private SqlSession sqlSession;
   
   
   public List<MagazineDTO> listMagazine1(int start, int end) {
        Map<String, Integer> map = new Hashtable<>();
       map.put("start", start);
       map.put("end", end);
       return sqlSession.selectList("listMagazine1", map);
         
      }
   
   public List<MagazineDTO> listMagazine() {
       List<MagazineDTO> list = sqlSession.selectList("listMagazine");
       return list;
    }
   
   public int insertMagazine(MagazineDTO dto) {
         return sqlSession.insert("insertMagazine", dto);
      }
      
   public MagazineDTO getMagazine(int mnum, String mode) {
      if (mode.equals("content")) plusReadcount(mnum);
         return sqlSession.selectOne("getMagazine", mnum);
   }
   
   public MagazineDTO getMagazine1(int mnum) {
            return sqlSession.selectOne("getMagazine", mnum);
      }
   
   public int plusReadcount(int mnum) {   
      return sqlSession.update("plusReadcount", mnum);
   
   }

   public int updateReadCount(int mnum) {
      return sqlSession.update("updateReadCount", mnum);
   }
   
   public int updateMagazine(MagazineDTO dto) {
      return sqlSession.update("updateMagazine", dto);   
   }
   
   public int deleteMagazine(int mnum) {
      return sqlSession.delete("deleteMagazine", mnum);

      }   
   
   public int getCount() {
      return sqlSession.selectOne("getCount");
   }

} 