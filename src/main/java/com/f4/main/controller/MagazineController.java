package com.f4.main.controller;

import java.io.File;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
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
import com.f4.main.dto.MagazineDTO;
import com.f4.main.service.MagazineMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller 
public class MagazineController {
    @Autowired
    private MagazineMapper magazinemapper;
    
    private static final DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    
    @RequestMapping("/magazineform.do")
    public String magazineform(Model model, HttpServletRequest req, @RequestParam(required=false) String pageNum) {
      int pageSize = 3;
      if (pageNum == null) pageNum = "1";
      int currentPage = (Integer.parseInt(pageNum));
      int startRow = (currentPage-1) * pageSize + 1;
      int endRow = startRow + pageSize - 1;
      //int count = boardDAO.getCount();
      int count = magazinemapper.getCount();
      if (endRow > count) endRow = count;
      //List<MagazineDTO> list = boardDAO.listBoard(startRow,  endRow);
      List<MagazineDTO> list = magazinemapper.listMagazine1(startRow,  endRow); 
      List<MagazineDTO> list1 = magazinemapper.listMagazine();
      List<MagazineDTO> list2 = magazinemapper.listMagazine();
      Collections.shuffle(list2);  
      int number = count - startRow + 1;
      int pageBlock = 3;
      int pageCount = count/pageSize + (count%pageSize == 0 ? 0 : 1);
      int startPage = (currentPage-1)/pageBlock * pageBlock + 1;
      int endPage = startPage + pageBlock - 1;
      if (endPage > pageCount) endPage = pageCount;
      req.setAttribute("number", number);
      req.setAttribute("count", count);
      req.setAttribute("pageBlock", pageBlock);
      req.setAttribute("pageCount", pageCount);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
        list.sort(Comparator.comparing(MagazineDTO::getReg_date).reversed());
        List<MagazineDTO> limitedList = list.stream().limit(6).collect(Collectors.toList());
        List<MagazineDTO> popularArticles = list.stream()
                .filter(article -> article.getReadcount() > 0) // 조회수가 0보다 큰 경우만 필터링
                .sorted(Comparator.comparing(MagazineDTO::getReadcount).reversed())
                .limit(3)
                .collect(Collectors.toList());
        
        list1.sort(Comparator.comparing(MagazineDTO::getReg_date).reversed());

        List<MagazineDTO> limitedList1 = list1.stream().limit(6).collect(Collectors.toList());
        List<MagazineDTO> popularArticles1 = list1.stream()
                .filter(article -> article.getReadcount() > 0) // 조회수가 0보다 큰 경우만 필터링
                .sorted(Comparator.comparing(MagazineDTO::getReadcount).reversed())
                .limit(3)
                .collect(Collectors.toList());

        model.addAttribute("list", limitedList);
        model.addAttribute("list1", limitedList1);
        model.addAttribute("list2", list2);
        model.addAttribute("popularArticles", popularArticles);
        model.addAttribute("popularArticles1", popularArticles1);
        model.addAttribute("dateFormatter", dateFormatter);

        return "magazine/magazineform";
    }
    
    @RequestMapping("/magzinedetail.do")
    public String magzinedetail(Model model, HttpServletRequest req, @RequestParam int mnum) {
        HttpSession session = req.getSession();
        String loginId = (String) session.getAttribute("loginId");
        boolean isAdmin = (loginId != null && loginId.equals("admin"));

        // 조회수 증가
        if (!isAdmin) {
            magazinemapper.updateReadCount(mnum);
        }

        try {
            MagazineDTO dto = magazinemapper.getMagazine1(mnum);
            model.addAttribute("dto", dto);
        } catch (Exception e) {
            e.printStackTrace();
            // 예외 처리 로직 추가
        }
        model.addAttribute("dateFormatter", dateFormatter);
        
        return "magazine/magazinedetail";
    }

    
    @RequestMapping(value = "magazine.do", method = RequestMethod.GET)
    public String magazine(Model model, HttpServletRequest req, @RequestParam(required=false) String pageNum) {
       int pageSize = 3;
      if (pageNum == null) pageNum = "1";
      int currentPage = (Integer.parseInt(pageNum));
      int startRow = (currentPage-1) * pageSize + 1;
      int endRow = startRow + pageSize - 1;
      //int count = boardDAO.getCount();
      int count = magazinemapper.getCount();
      if (endRow > count) endRow = count;
      //List<MagazineDTO> list = boardDAO.listBoard(startRow,  endRow);
      List<MagazineDTO> list = magazinemapper.listMagazine1(startRow,  endRow); 
      
      int number = count - startRow + 1;
      int pageBlock = 3;
      int pageCount = count/pageSize + (count%pageSize == 0 ? 0 : 1);
      int startPage = (currentPage-1)/pageBlock * pageBlock + 1;
      int endPage = startPage + pageBlock - 1;
      if (endPage > pageCount) endPage = pageCount;
      req.setAttribute("number", number);
      req.setAttribute("count", count);
      req.setAttribute("pageBlock", pageBlock);
      req.setAttribute("pageCount", pageCount);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
       
        list.sort(Comparator.comparing(MagazineDTO::getMnum).reversed()); // 게시물 등록 순으로 정렬
        model.addAttribute("magazineList", list);
        return "admin/magazine";
    }

    @RequestMapping(value = "magazine_ok.do", method = RequestMethod.POST)
    public String magazine(HttpServletRequest req, @ModelAttribute MagazineDTO dto, BindingResult result) {
        List<MagazineDTO> list = magazinemapper.listMagazine();

        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
        MultipartFile mf = mr.getFile("mimage");
        String filename = mf.getOriginalFilename();
        String path = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
        File file = new File(path, filename);
        try {
            mf.transferTo(file);
        } catch (IOException e) {
            req.setAttribute("msg", "파일 업로드 중 오류 발생!! 관리자에게 문의하세요");
            req.setAttribute("url", "magazine.do");
            return "message";
        }

        dto.setMimage(filename);
        
        MultipartFile mf2 = mr.getFile("mimage2");
        if (mf2 != null && !mf2.isEmpty()) {
            String filename2 = mf2.getOriginalFilename();
            File file2 = new File(path, filename2);
            
            try {
                mf2.transferTo(file2);
            } catch (IOException e) {
                req.setAttribute("msg", "파일 업로드 중 오류 발생!! 관리자에게 문의하세요");
                req.setAttribute("url", "magazine.do");
                return "message";
            }

            dto.setMimage2(filename2);
        }

        int res = magazinemapper.insertMagazine(dto);
        if (res > 0) {
            req.setAttribute("msg", "등록 성공!!");
            req.setAttribute("url", "magazine.do");
        } else {
            req.setAttribute("msg", "등록 실패!!");
            req.setAttribute("url", "magazine.do");
        }
        return "message";
    }
   
    
    @RequestMapping(value = "magazine_update.do", method = RequestMethod.GET)
    public String magazine_update(HttpServletRequest req, @RequestParam int mnum) {   
       
        MagazineDTO dto = magazinemapper.getMagazine1(mnum);
        req.setAttribute("upPath", req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files"));
        req.setAttribute("getMagazine", dto);
        return "magazine/magazine_update"; 
    }
   
   
    @RequestMapping(value="/magazine_update.do", method=RequestMethod.POST)
    public String magazine_update_ok(HttpServletRequest req, 
            @ModelAttribute MagazineDTO dto, BindingResult result) {
       if (result.hasErrors()) {
            dto.setMimage("");
        }
        
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
        MultipartFile mf = mr.getFile("mimage");
        String filename = mf.getOriginalFilename();
        if (filename == null || filename.trim().equals("") || mf.isEmpty()) {
            dto.setMimage(req.getParameter("mimage3"));
        } else {
            // 파일 업로드 처리
            String path = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
            File file = new File(path, filename);
            try {
                mf.transferTo(file);
            } catch(IOException e) {
                req.setAttribute("msg", "파일 업로드 중 오류발생!! 관리자에게 문의해 주세요");
                req.setAttribute("url", "magazine.do");
                return "forward:message.jsp";
            }
            dto.setMimage(filename);
        }

        // 이미지2 업로드 처리
        MultipartFile mf2 = mr.getFile("mimage2");
        if (mf2 != null) {
            String filename2 = mf2.getOriginalFilename();
            if (filename2 == null || filename2.trim().equals("") || mf2.isEmpty()) {
                dto.setMimage2(req.getParameter("mimage4"));
            } else {
                // 파일 업로드 처리
                String path = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
                File file2 = new File(path, filename2);
                try {
                    mf2.transferTo(file2);
                } catch(IOException e) {
                    req.setAttribute("msg", "파일 업로드 중 오류발생!! 관리자에게 문의해 주세요");
                    req.setAttribute("url", "magazine.do");
                    return "forward:message.jsp";
                }
                dto.setMimage2(filename2);
            }
        }

        // 매거진 정보 업데이트
        int res = magazinemapper.updateMagazine(dto);

        // 업데이트 결과에 따른 처리
        if (res > 0) {
            req.setAttribute("msg", "수정 성공하셨습니다.");
            return "windowClose";
        } else {
            req.setAttribute("msg", "수정 실패하셨습니다.");
            return "windowClose";
        }
    }
    
    
    
    @RequestMapping("/magazine_delete.do")
    public String magazine_delete(HttpServletRequest req, @RequestParam Map<String, String> params) {
        int res = magazinemapper.deleteMagazine(Integer.parseInt(params.get("mnum")));
        if (res > 0) {
            String upPath = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");

            // 삭제할 파일 경로 및 이름
            String imagePath1 = params.get("mimage");
            String imagePath2 = params.get("mimage2");

            // 파일1 삭제
            File file1 = new File(upPath, imagePath1);
            if (file1.exists()) {
                file1.delete();
            }

            // 파일2 삭제
            if (imagePath2 != null && !imagePath2.isEmpty()) {
                File file2 = new File(upPath, imagePath2);
                if (file2.exists()) {
                    file2.delete();
                }
            }
        }
        return "redirect:magazine.do";
    }
    
    
}
    
    
   
   