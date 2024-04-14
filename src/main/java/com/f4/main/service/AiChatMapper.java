package com.f4.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.BrandDTO;

@Service
public class AiChatMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<BrandDTO> getBrandData(String address, String categorie, String storeName, String total) {
		Map<String, String> map = new HashMap<>();
		if(address == null && categorie == null && storeName == null && total == null) {
			return null;
		}
		map.put("address", address);
		map.put("categorie", categorie);
		map.put("storeName", storeName);
		map.put("total", total);
		List<BrandDTO> list = sqlSession.selectList("getBrandData", map);
	    return list;
	}
	
	public List<BrandDTO> getBrandData_AllNull() {
		List<BrandDTO> list = sqlSession.selectList("getBrandData_AllNull");
	    return list;
	}
	
	public int getBrandData_All_Total() {
		int average;
		Integer Avg = sqlSession.selectOne("getBrandData_All_Total");
		if (Avg == null) {
			average = 0;
		}else {
			average = Avg;
		}
	    return average;
	}

	
	public int getBrandData_Total(String address, String categorie, String storeName) {
		int average;
		if(address == null && categorie == null && storeName == null) {
			return 0;
		}
		Map<String, String> map = new HashMap<>();
		map.put("address", address);
		map.put("categorie", categorie);
		map.put("storeName", storeName);
		Integer Avg = sqlSession.selectOne("getBrandData_Total", map);
		if (Avg == null) {
			average = 0;
		}else {
			average = Avg;
		}
	    return average;
	}
	
	
	
}
