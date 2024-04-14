package com.f4.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.f4.main.dto.RankDTO;
import com.f4.main.service.RankingMapper;

@Controller
public class RankingController {
	
	@Autowired
	private RankingMapper rankmapper;
	 
		 @RequestMapping("/ranking_do")
		 public String ranking(Model model) {
			 List<RankDTO> dto = rankmapper.ranking();
				model.addAttribute("dto", dto);
			 return "ranking/ranking"; 
		 }

}
