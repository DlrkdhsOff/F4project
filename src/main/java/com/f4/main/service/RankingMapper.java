package com.f4.main.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.RankDTO;

@Service
public class RankingMapper {
	
   @Autowired
   private SqlSession sqlSession;

	public List<RankDTO> updateRank(String storeName) {
		List<RankDTO> list = sqlSession.selectList("updateRank", storeName);
		return list;
	}
	
	public List<RankDTO> ranking() {
		List<RankDTO> list = sqlSession.selectList("rank");
		return list;
	}
}
