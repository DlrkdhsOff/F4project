package com.f4.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.f4.main.dto.MemberDTO;
import com.f4.main.service.F4Mapper;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class BrandAdminController {
	
	@Autowired
	private F4Mapper f4mapper;

	@RequestMapping("/brandadmin.do")
	public String brandadmin() {
		return "brandadmin/brandadmin";
	}

	@RequestMapping("/exchat.do")
	public String exchat() {
		return "exchat";
	}

	/* 예비 창업주 창업 비교 리스트 */

	@RequestMapping("/brandadminlist.do")
	public String brandadminlist(HttpServletRequest req, Model model) {
	    // "flexRadioDefault" 파라미터 값 가져오기
	    String price = req.getParameter("price");
	    if(price==null) {
	    	price="5천만원 미만";
	    }
	    List<MemberDTO> list = f4mapper.PricelistJtm(price);
	    model.addAttribute("price", price);
	    model.addAttribute("priceList", list);
	    
	    // 여기에 실제로 수행할 로직 추가
	    // 예를 들어, price를 이용하여 데이터를 조회하고 모델에 추가
	    // model.addAttribute("resultData", resultData);

	    return "brandadmin/brandadminlist"; // 결과를 보여줄 뷰 페이지의 이름
	}

}
