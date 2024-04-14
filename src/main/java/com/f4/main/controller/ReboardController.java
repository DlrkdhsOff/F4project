package com.f4.main.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.ReboardDTO;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.ReboardMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReboardController {
	@Autowired
	private ReboardMapper reboardMapper;

	@Autowired
	private F4Mapper f4mapper;

	@RequestMapping("/re_list.board.do")
	public String processCommand(HttpServletRequest req, @RequestParam(required = false) String pageNum, Model model) {
		HttpSession session = req.getSession();
		List<ReboardDTO> listReboard = new ArrayList<>();
		String id = (String) session.getAttribute("loginId");

		int kind = Integer.parseInt(req.getParameter("kind"));
//      System.out.println(kind);
		int pageSize = 5;
		if (pageNum == null)
			pageNum = "1";
		int currentPage = (Integer.parseInt(pageNum));
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		int count = 0;
		if (id.equals("admin")) {
			count = reboardMapper.ad_getRecount();
			if (endRow > count)
				endRow = count;
			listReboard = reboardMapper.ad_listReboard(startRow, endRow);
		} else {
			count = reboardMapper.getRecount(id);
			if (endRow > count)
				endRow = count;
			listReboard = reboardMapper.listReboard(startRow, endRow, id, kind);
		}

		model.addAttribute("listReboard", listReboard);
		int number = count - startRow + 1;
		int pageBlock = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;
		model.addAttribute("number", number);
		model.addAttribute("count", count);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);

		return "reboard/list";
	}

	@RequestMapping("/re_content.board.do")
	public String content_reboard(Model model, int num) {
		ReboardDTO dto = reboardMapper.getReboard(num, "content");
		List<ReboardDTO> comment = reboardMapper.getReboard1(num);
		model.addAttribute("getReboard", dto);
		model.addAttribute("comment", comment);
		return "reboard/content";
	}

	@RequestMapping(value = "/re_writeForm.board.do", method = RequestMethod.GET)
	public String writeForm_reboard(HttpServletRequest req) {
		HttpSession session = req.getSession();
		Object id = session.getAttribute("loginId");
		MemberDTO dto = f4mapper.getReboard(id);
		req.setAttribute("getreboard", dto);
		return "reboard/writeForm";
	}

	@RequestMapping(value = "/re_writeForm.board.do", method = RequestMethod.POST)
	public String writePro_reboard(HttpServletRequest req, @ModelAttribute ReboardDTO dto, BindingResult result)
			throws SQLException {
		String id = req.getParameter("id");
		int kind = Integer.parseInt(req.getParameter("kind"));
		// System.out.println(kind);

		if (result.hasErrors()) {
			dto.setNum(0);
			dto.setRe_step(0);
			dto.setRe_level(0);
			dto.setRe_group(0);

		}
		dto.setPasswd("0");
		dto.setAnswer("0");
		dto.setIp(req.getRemoteAddr());

		int res = reboardMapper.insertReboard(dto);
		if (res > 0) {
			req.setAttribute("msg", "게시글 등록 성공!! 게시글 목록 페이지로 이동합니다.");
			req.setAttribute("url", "re_list.board.do?kind=" + kind + "&id=" + dto.getId());
		} else {
			req.setAttribute("msg", "게시글 등록 실패!! 게시글 등록 페이지로 이동합니다.");
			req.setAttribute("url", "re_writeForm.board.do");
		}
		return "message";
	}

	@RequestMapping("/re_writeForm_ad_board.do")
	public String writePro_reboard_ad(HttpServletRequest req, @ModelAttribute ReboardDTO dto, BindingResult result)
			throws SQLException {
		int kind = Integer.parseInt(req.getParameter("kind"));
//		 System.out.println(kind); 

		String ad_answer = req.getParameter("ad_answer");
		String num = req.getParameter("num");
		String answer = "1";
		int res = reboardMapper.adContent(ad_answer, Integer.parseInt(num), answer);
		if (res > 0) {
			req.setAttribute("msg", "댓글 등록 성공!!");
			req.setAttribute("url", "re_list.board.do?kind=0&id=admin");
		} else {
			req.setAttribute("msg", "댓글 등록 실패!!");
			req.setAttribute("url", "re_writeForm.board.do");
		}
		return "forward:WEB-INF/views/message.jsp";
	}

	@RequestMapping("re_find.board.do")
	public String find(HttpServletRequest req, String search, String searchString,
			@RequestParam(required = false) String pageNum) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("loginId");

		int kind = Integer.parseInt(req.getParameter("kind"));

		List<ReboardDTO> listReboard = new ArrayList<>();

		int pageSize = 5;
		if (pageNum == null) {
			pageNum = "1";
		}
		int currentPage = (Integer.parseInt(pageNum));
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		int count = reboardMapper.getRecount(id);
		int number = 0;

		if (searchString == null || searchString.trim().isEmpty()) {
			if (id.equals("admin")) {
				count = reboardMapper.ad_getRecount();
				if (endRow > count)
					endRow = count;
				listReboard = reboardMapper.ad_listReboard(startRow, endRow);
			} else {
				count = reboardMapper.getRecount(id);
				if (endRow > count)
					endRow = count;
				listReboard = reboardMapper.listReboard(startRow, endRow, id, kind);
			}
		} else {
			if (id.equals("admin")) {
				listReboard = reboardMapper.ad_findBoard(search, searchString);
				number = listReboard.size();

			} else {
				listReboard = reboardMapper.findBoard(search, searchString, id);
				number = listReboard.size();
			}
		}

		int pageBlock = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > pageCount)
			endPage = pageCount;

		req.setAttribute("number", number);
		req.setAttribute("count", count);
		req.setAttribute("pageBlock", pageBlock);
		req.setAttribute("pageCount", pageCount);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("listReboard", listReboard);
		return "reboard/list";
	}
}