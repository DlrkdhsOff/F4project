package com.f4.main.service;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.f4.main.dto.MainMiddleImageDTO;

@Service
public class MiddelImageMapper {

	
	@Autowired
	   private SqlSession sqlSession;
	
	
	public int UpdateMiddleImage(MainMiddleImageDTO dto) {
        return sqlSession.update("UpdateMiddleImage", dto);
     }
	
	public int insertMiddleImage(MainMiddleImageDTO dto) {
        return sqlSession.insert("insertMiddleImage", dto);
     }
	
   public MainMiddleImageDTO listimgae() {
       MainMiddleImageDTO dto = sqlSession.selectOne("listimgae");
       return dto;
    }
}
