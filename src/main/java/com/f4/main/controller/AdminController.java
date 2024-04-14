package com.f4.main.controller;

import java.io.File;
import java.io.IOException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.f4.main.dto.BrandDTO;
import com.f4.main.dto.MainMiddleImageDTO;
import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.SaupDTO;
import com.f4.main.service.BrandMapper;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.MiddelImageMapper;
import com.f4.main.service.SaupMapper;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

	@Autowired
	private F4Mapper f4mapper;

	@Autowired
	private SaupMapper saupmapper;

	@Autowired
	private BrandMapper brandMapper;

	@Autowired
	private MiddelImageMapper middleimagemapper;

	@RequestMapping("/adminn.do")
	public String admin() {
		return "admin/admin";
	}

	@RequestMapping("/magazine.do")
	public String magazine() {
		return "admin/magazine";
	}

	@RequestMapping("/main_picture.do")
	public String main_picture(Model model) {
		MainMiddleImageDTO dto = middleimagemapper.listimgae();
		model.addAttribute("middleImage", dto);
		return "admin/main_picture";
	}

	@RequestMapping("admin_updateMember.do")
	public String admin_update(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
		int res = f4mapper.updateAdmin(dto);
		if (res > 0) {
			req.setAttribute("msg", "비밀번호 수정성공!!");
			req.setAttribute("url", "Member_Management.do");
		} else {
			req.setAttribute("msg", "회원수정실패!!");
			req.setAttribute("url", "Member_Management.do");
		}
		return "message";
	}

	@RequestMapping("deleteAdmin.do")
	public String admin_delete(HttpServletRequest req, int no) {
		int res = f4mapper.deleteAdmin(no);
		if (res > 0) {
			req.setAttribute("msg", "삭제 되었습니다");
			req.setAttribute("url", "Member_Management.do");
		} else {
			req.setAttribute("msg", "삭제 되지 않았습니다");
			req.setAttribute("url", "Member_Management.do");
		}
		return "message";
	}

	@RequestMapping("/Member_Management.do")
	   public String Member_Management(Model model) {
	      List<MemberDTO> yclist = f4mapper.YclistJtm();
	      List<MemberDTO> balist = f4mapper.BalistJtm();
	      model.addAttribute("YCmember", yclist);
	      model.addAttribute("BAmember", balist);
	      return "admin/Member_Management";
	   }

	@RequestMapping("admin_mypage.do")
	public String admin_mypage(HttpServletRequest req, String id) {
		MemberDTO dto = f4mapper.getMember(id);
		req.setAttribute("getMember", dto);
		return "admin/mypage";
	}

	@RequestMapping("/brandsearch.do")
	public String brandsearch() {
		return "admin/brandsearch";
	}

	@RequestMapping("/saup_list.do")
	public String accept(HttpServletRequest req, Model model) {
		List<SaupDTO> list = saupmapper.getSaupList();
		model.addAttribute("list", list);
		return "admin/saup_list";
	}

	@RequestMapping("/saup_accept.do")
	public String saup_detail(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		List<SaupDTO> list = saupmapper.getSaupDetail(id);
		model.addAttribute("list", list);
		return "admin/saup_accept";
	}

	@RequestMapping("/saup_final.do")
	public String saup_final(HttpServletRequest req, Model model) {
		String msg = null, url = null;
		Map<String, String> params = new HashMap<>();
		params.put("name", req.getParameter("name"));
		params.put("accept", req.getParameter("accept"));
		saupmapper.getSaupUpdate(params);
		if (req.getParameter("accept").equals("1")) {
			msg = "수락 되었습니다.";
			url = "saup_list.do";
			req.setAttribute("msg", msg);
			req.setAttribute("url", url);
		} else if (req.getParameter("accept").equals("2")) {
			msg = "거절 되었습니다.";
			url = "saup_list.do";
			req.setAttribute("msg", msg);
			req.setAttribute("url", url);
		}
		return "message";
	}

	@RequestMapping("/admin_brandList.do")
	public String brandlist(HttpServletRequest req, @RequestParam(required = false) String pageNum, Model model) {
		int pageSize = 3;
		if (pageNum == null)
			pageNum = "1";
		int currentPage = (Integer.parseInt(pageNum));
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = startRow + pageSize - 1;
		// int count = boardDAO.getCount();
		int count = brandMapper.getCount_brand();
		if (endRow > count)
			endRow = count;
		// List<MagazineDTO> list = boardDAO.listBoard(startRow, endRow);
		List<BrandDTO> list = brandMapper.listBrand(startRow, endRow);

		int number = count - startRow + 1;
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
		list.sort(Comparator.comparing(BrandDTO::getBnum).reversed());
		model.addAttribute("BrandList", list);
		return "admin/admin_brand";
	}

	@RequestMapping(value = "/middleimage.do", method = RequestMethod.GET)
	public String displayForm(Model model) {
		MainMiddleImageDTO dto = middleimagemapper.listimgae();
		model.addAttribute("middleImage", dto);
		return "admin/main_picture"; // 폼 페이지의 뷰 이름
	}

	@RequestMapping(value = "/middleimage.do", method = RequestMethod.POST)
	public String magazine(HttpServletRequest req, @ModelAttribute MainMiddleImageDTO dto, BindingResult result) {
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
		List<MultipartFile> files = mr.getFiles("images[]"); // "image"는 input 태그의 name 속성 값과 일치해야 합니다.
		for (int i = 0; i < files.size(); i++) {
			MultipartFile mf = files.get(i);
			String filename = mf.getOriginalFilename();
			String path = req.getServletContext()
					.getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
			File file = new File(path, filename);
			try {
				mf.transferTo(file);
			} catch (IOException e) {
				req.setAttribute("msg", "파일 업로드 중 오류 발생!! 관리자에게 문의하세요");
				req.setAttribute("url", "magazine.do");
				return "message";
			}
			if (i == 0) {
				dto.setImage1(filename);
			} else if (i == 1) {
				dto.setImage2(filename);
			} else if (i == 2) {
				dto.setImage3(filename);
			}
		}
		int res = middleimagemapper.UpdateMiddleImage(dto);
		if (res > 0) {
			req.setAttribute("msg", "등록 성공!!");
			req.setAttribute("url", "main_picture.do");
		} else {
			req.setAttribute("msg", "등록 실패!!");
			req.setAttribute("url", "main_picture.do");
		}
		return "message";
	}

	@RequestMapping(value = "/middleImage_update.do", method = RequestMethod.GET)
	public String middleImage_update(HttpServletRequest req, Model model) {
		MainMiddleImageDTO dto = middleimagemapper.listimgae();
		String imageType = req.getParameter("type");
		String imageName = req.getParameter("image");
		model.addAttribute("dto", dto);
		model.addAttribute("imageType", imageType);
		model.addAttribute("imageName", imageName);
		return "middleImage/middle_image_Update";
	}

	@RequestMapping(value = "/middleImage_update.do", method = RequestMethod.POST)
	public String middleImage_update(HttpServletRequest req, @ModelAttribute MainMiddleImageDTO dto,
			BindingResult result) {
		String imageType = req.getParameter("type");
		if (result.hasErrors()) {
			if (imageType.equals("image1")) {
				dto.setImage1("");
			} else if (imageType.equals("image2")) {
				dto.setImage2("");
			} else if (imageType.equals("image3")) {
				dto.setImage3("");
			}
		}
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
		MultipartFile mf = mr.getFile("image");
		String filename = mf.getOriginalFilename();
		if (filename == null || filename.trim().equals("") || mf.isEmpty()) {
			if (imageType.equals("image1")) {
			} else if (imageType.equals("image2")) {
			} else if (imageType.equals("image3")) {
			}
		} else {
			// 파일 업로드 처리
			String path = req.getServletContext()
					.getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
			File file = new File(path, filename);
			try {
				mf.transferTo(file);
			} catch (IOException e) {
				req.setAttribute("msg", "파일 업로드 중 오류발생!! 관리자에게 문의해 주세요");
				req.setAttribute("url", "main_picture.do");
				return "forward:message.jsp";
			}
			if (imageType.equals("image1")) {
				dto.setImage1(filename);
			} else if (imageType.equals("image2")) {
				dto.setImage2(filename);
			} else if (imageType.equals("image3")) {
				dto.setImage3(filename);
			}
		}
		// 매거진 정보 업데이트
		int res = middleimagemapper.UpdateMiddleImage(dto);
		// 업데이트 결과에 따른 처리
		if (res > 0) {
			req.setAttribute("msg", "수정 성공하셨습니다.");
			return "windowClose";
		} else {
			req.setAttribute("msg", "수정 실패하셨습니다.");
			return "windowClose";
		}
	}
}