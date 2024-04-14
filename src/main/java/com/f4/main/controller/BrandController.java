package com.f4.main.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.f4.main.dto.BrandDTO;
import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.WishlistDTO;
import com.f4.main.service.BrandMapper;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.RankingMapper;
import com.f4.main.service.SangkwonData;
import com.f4.main.service.SangkwonName;
import com.f4.main.dto.LoginOkBean;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class BrandController {

   @Autowired
   private BrandMapper brandMapper;

   @Autowired
   private F4Mapper f4mapper;
   
   @Autowired
   private SangkwonName sangkwonname;

   @Autowired
   private SangkwonData sangkwondata;

   @Autowired
   private RankingMapper rankingmapper;

   @RequestMapping("/BrandList.do")
   public String brandList(HttpServletRequest req, Model model) {
       String tablename = req.getParameter("tablename");
       int pageSize = 9;
       // pageNum 파라미터를 가져오고, null이면 1로 설정
       String pageNumParam = req.getParameter("pageNum");
       int currentPage = (pageNumParam != null) ? Integer.parseInt(pageNumParam) : 1;
       int startRow = (currentPage - 1) * pageSize + 1;
       int endRow = startRow + pageSize - 1;
       List<BrandDTO> list = brandMapper.getBrandList(startRow, endRow, tablename);
       model.addAttribute("listBrand", list);
       int count = brandMapper.getCount_brand1(tablename);
       int number = count - startRow + 1;
       int pageBlock = 3;
       int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
       int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
       int endPage = startPage + pageBlock - 1;
       if (endPage > pageCount) {
           endPage = pageCount;
       }
       model.addAttribute("number", number);
       model.addAttribute("count", count);
       model.addAttribute("pageBlock", pageBlock);
       model.addAttribute("pageCount", pageCount);
       model.addAttribute("startPage", startPage);
       model.addAttribute("endPage", endPage);
       model.addAttribute("tablename", tablename);
       return "brand/bunsuk";
   }
    
   @RequestMapping("/bunsuk_do")
   public String bunsuk(HttpServletRequest req, @RequestParam(required = false) String pageNum,
         @RequestParam(required = false) String sortBy, Model model) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      String tablename = req.getParameter("tablename");
      int count = 0;
      int pageSize = 9;
      if (pageNum == null)
         pageNum = "1";
      int currentPage = Integer.parseInt(pageNum);
      int startRow = (currentPage - 1) * pageSize + 1;
      int endRow = startRow + pageSize - 1;
      if (tablename == null) {
         count = brandMapper.getCount_brand();
      } else if (tablename != null) {
         if (tablename.equals("all")) {
            count = brandMapper.getCount_brand();
         } else {
            count = brandMapper.getCount_brand1(tablename);
         }
      }
      if (endRow > count)
         endRow = count;
      List<BrandDTO> list = null;
      if (sortBy == null) {
         if (tablename == null) {
            list = brandMapper.listBrand(startRow, endRow);
         } else if (tablename != null) {
            if (tablename.equals("all")) {
               list = brandMapper.listBrand(startRow, endRow);
            } else {
               list = brandMapper.getBrandList(startRow, endRow, tablename);
            }
         }
      } else if (sortBy != null) {
         if (tablename == null) {
            list = brandMapper.listBrandOrderByWon(startRow, endRow);
         } else if (tablename != null) {
            if (tablename.equals("all")) {
               list = brandMapper.listBrandOrderByWon(startRow, endRow);
            } else {
               list = brandMapper.listBrandOrderByWon1(startRow, endRow, tablename);
            }

         }
      }
      req.setAttribute("listBrand", list);
      int number = count - startRow + 1;
      int pageBlock = 3;
      int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
      int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
      int endPage = startPage + pageBlock - 1;
      if (endPage > pageCount)
         endPage = pageCount;
      if (id != null) {
         MemberDTO dto = f4mapper.getMember(id);
         if (dto != null) {
            model.addAttribute("saup_Id", dto.getBnr());
         } else {
            model.addAttribute("saup_Id", 0);
         }
      } else {
         model.addAttribute("saup_Id", 0);
      }
      req.setAttribute("number", number);
      req.setAttribute("count", count);
      req.setAttribute("pageBlock", pageBlock);
      req.setAttribute("pageCount", pageCount);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("tablename", tablename);
      return "brand/bunsuk";
   }

   @RequestMapping(value = "/brandform.do", method = RequestMethod.GET)
   public String brandform(HttpServletRequest req, Model model) {
      HttpSession session = req.getSession();
      String tablename = (String) session.getAttribute("tablename");
      if (tablename == null) {
         tablename = "all";
      } else if (tablename.equals("all")) {
         tablename = "all";
      } else if (tablename.equals("chicken")) {
         tablename = "치킨";
      } else if (tablename.equals("pizza")) {
         tablename = "피자";
      } else if (tablename.equals("jokbal_Bossam")) {
         tablename = "족발/보쌈";
      } else if (tablename.equals("chinese")) {
         tablename = "중식";
      } else if (tablename.equals("japanese")) {
         tablename = "일식";
      } else if (tablename.equals("korean")) {
         tablename = "한식";
      } else if (tablename.equals("western")) {
         tablename = "양식";
      } else if (tablename.equals("snack")) {
         tablename = "분식";
      } else if (tablename.equals("pub")) {
         tablename = "주점";
      } else if (tablename.equals("fastFood")) {
         tablename = "패스트푸드";
      } else if (tablename.equals("asian")) {
         tablename = "아시안";
      } else if (tablename.equals("dessert")) {
         tablename = "디저트";
      } else if (tablename.equals("cafe")) {
         tablename = "카페";
      }
      model.addAttribute("tablename", tablename);
      return "brand/brandform";
   }

   @RequestMapping(value = "/brandform_ok.do", method = RequestMethod.POST)
   public String brandform(HttpServletRequest req, @ModelAttribute BrandDTO dto, BindingResult result) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
      MultipartFile mf = mr.getFile("bimage");
      String filename = mf.getOriginalFilename();
      String path = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
      File file = new File(path, filename);
      try {
         mf.transferTo(file);
      } catch (IOException e) {
         req.setAttribute("msg", "파일 업로드 중 오류 발생!! 관리자에게 문의하세요");
         return "closeWindow";
      }
      dto.setBimage(filename);
      dto.setId(id);
      int res = brandMapper.insertBrand(dto);
      if (res > 0) {
         req.setAttribute("msg", "등록 성공!!");
         req.setAttribute("url", "brandadmin.do");
      } else {
         req.setAttribute("msg", "등록 실패!!");
         req.setAttribute("url", "brandadmin.do");
      }
      return "message";
   }

   @RequestMapping("/bunsukDetail.do")
   public String bunsukDetail(HttpServletRequest req, @RequestParam int bnum) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      BrandDTO dto = brandMapper.getBrand(bnum);
      WishlistDTO wishlist = new WishlistDTO();
      // System.out.println(wishlist.getBnum());
      if (id != null) {
         wishlist = brandMapper.getWishListId(bnum);
      }
      session.setAttribute("brandId", dto.getId());
      req.setAttribute("upPath", req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files"));
      req.setAttribute("dto", dto);
      req.setAttribute("wishlist", wishlist);

      return "brand/bunsukDetail";
   }

   @RequestMapping("/brand.do")
      public String brand(HttpServletRequest req, Model model) {
         HttpSession session = req.getSession();
          String isLogin = (String) session.getAttribute("loginId");
         // System.out.println("islogin : " + isLogin);
          model.addAttribute("isLogin", isLogin);
         return "brand/brand";
      }

   @RequestMapping(value = "bunsuk_update.do", method = RequestMethod.GET)
   public String magazine_update(HttpServletRequest req, @RequestParam int bnum) {
      BrandDTO dto = brandMapper.getBrand(bnum);
      req.setAttribute("upPath", req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files"));
      req.setAttribute("getBrand", dto);
      return "brand/bunsuk_update";
   }

   @RequestMapping(value = "/bunsuk_update.do", method = RequestMethod.POST)
   public String bunsuk_update_ok(HttpServletRequest req, @ModelAttribute BrandDTO dto, BindingResult result) {
      if (result.hasErrors()) {
         dto.setBimage("");
      }
      MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
      MultipartFile mf = mr.getFile("bimage");
      String filename = mf.getOriginalFilename();
      if (filename == null || filename.trim().equals("")) {
         dto.setBimage(req.getParameter("bimage2"));
      } else {
         String path = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
         File file = new File(path, filename);
         try {
            mf.transferTo(file);
         } catch (IOException e) {
            req.setAttribute("msg", "파일 업로드 중 오류발생!! 관리자에게 문의해 주세요");
            req.setAttribute("url", "brand.do");
            return "forward:message.jsp";
         }
         dto.setBimage(filename);
      }

      // 매거진 정보 업데이트
      int res = brandMapper.updateBrand(dto);

      // 업데이트 결과에 따른 처리
      if (res > 0) {
         req.setAttribute("msg", "수정 성공하셨습니다.");
         return "closeWindow";
      } else {
         req.setAttribute("msg", "수정 실패하셨습니다.");
         return "closeWindow";
      }
   }

   @RequestMapping("/brand_delete.do")
   public String brand_delete(HttpServletRequest req, @RequestParam Map<String, String> params) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      int res = brandMapper.deleteBrand(Integer.parseInt(params.get("bnum")));
      if (res > 0) {
         String upPath = req.getServletContext().getRealPath("D:/kaon/Project/Third_Project/mavenProject/src/main/resources/static/files");
         File file = new File(upPath, params.get("bimage"));
         if (file.exists()) {
            file.delete();
         }
         req.setAttribute("msg", "삭제되었습니다");
         if (id.trim().equals("admin")) {
            req.setAttribute("url", "admin_brandList.do");
         } else {
            req.setAttribute("url", "bunsuk_do");
         }
      }
      return "message";
   }

   @RequestMapping("/getWishlist.do")
   @ResponseBody
   public ResponseEntity<List<BrandDTO>> getWishlist(HttpServletRequest req) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      if (id != null) {
         // 여기에서 실제로 데이터베이스에서 찜 목록을 가져오는 작업을 수행합니다.
         List<BrandDTO> wishlist = brandMapper.getWishlist(id);
         return new ResponseEntity<>(wishlist, HttpStatus.OK);
      } else {
         return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
      }
   }

   @RequestMapping("/mypage.do")
   public String mypage(HttpServletRequest req, Model model) {
      HttpSession session = req.getSession();
      Object id = session.getAttribute("loginId");
      if (id != null) {
         MemberDTO dto = f4mapper.getReboard((String) id);
         req.setAttribute("getMember", dto);

         // 찜한 목록 가져와서 모델에 추가
         List<BrandDTO> wishlist = brandMapper.getWishlist((String) id);
         model.addAttribute("wishlist", wishlist);
         return "mypage";
      } else {
         // 로그인되어 있지 않은 경우 로그인 페이지로 이동하거나 다른 처리를 수행할 수 있습니다.
         return "redirect:login.do"; // 예시로 로그인 페이지로 리다이렉트하는 코드입니다.
      }
   }
   
   @RequestMapping(value = "/beforeMypage.do", method = RequestMethod.GET)
   public String beforeMypage() {
      return "membership/beforeMypage";
   }
   
   @RequestMapping(value = "/mypage_ok.do", method = RequestMethod.POST)
   public String mypage_ok(HttpServletRequest req, String pw, Model model) {
       HttpSession session = req.getSession();
       Object loginId = session.getAttribute("loginId");

       // 세션에 저장된 로그인된 아이디로 회원 정보를 가져옴
       MemberDTO loggedInUser = f4mapper.getMember(loginId.toString());

       // 로그인된 사용자 정보가 없거나, 비밀번호가 일치하지 않으면 처리
       if (loggedInUser == null || !loggedInUser.getPw().equals(pw)) {
          req.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
           return "windowClose";
       } else {
           return "membership/mypageClose";
       }
   }
//======================================================================================================
//   @RequestMapping("/addToWishlist.do")
//   @ResponseBody
//   public ResponseEntity<String> addToWishlist(HttpServletRequest req, @RequestParam int bnum) {
//      HttpSession session = req.getSession();
//      String id = (String) session.getAttribute("loginId");
//      if (id != null) {
//         int res = brandMapper.addToWishlist(id, bnum);
//         if (res > 0) {
//            return new ResponseEntity<>("찜하기 성공", HttpStatus.OK);
//         } else {
//            return new ResponseEntity<>("찜하기 실패", HttpStatus.INTERNAL_SERVER_ERROR);
//         }
//      } else {
//         return new ResponseEntity<>("로그인이 필요합니다", HttpStatus.UNAUTHORIZED);
//      }
//   }

   @RequestMapping("/addToWishlist.do")
   @ResponseBody
   public ResponseEntity<String> addToWishlist(HttpServletRequest req, @RequestParam int bnum) {
       HttpSession session = req.getSession();
       String id = (String) session.getAttribute("loginId");

       // 기존 찜 목록을 가져와서 개수 확인
       List<BrandDTO> wishlist = brandMapper.getWishlist(id);
       int currentWishlistSize = wishlist.size();

       // 찜 개수가 9개 이하일 때만 찜하기를 수행하고, 그 이상이면 메시지 반환
       if (currentWishlistSize < 9) {
           if (id != null) {
               int res = brandMapper.addToWishlist(id, bnum);
               if (res > 0) {
                   return new ResponseEntity<>("찜하기 성공", HttpStatus.OK);
               } else {
                   return new ResponseEntity<>("찜하기 실패", HttpStatus.INTERNAL_SERVER_ERROR);
               }
           } else {
               return new ResponseEntity<>("로그인이 필요합니다", HttpStatus.UNAUTHORIZED);
           }
       } else {
           return new ResponseEntity<>("9개까지만 찜할 수 있습니다", HttpStatus.BAD_REQUEST);
       }
   }
   
//======================================================================================================
   @RequestMapping("/removeFromWishlist.do")
   @ResponseBody
   public ResponseEntity<String> removeFromWishlist(HttpServletRequest req, @RequestParam int bnum) {
      HttpSession session = req.getSession();
      String id = (String) session.getAttribute("loginId");
      if (id != null) {
         int res = brandMapper.removeFromWishlist(id, bnum);
         if (res > 0) {
            return new ResponseEntity<>("찜 취소 성공", HttpStatus.OK);
         } else {
            return new ResponseEntity<>("찜 취소 실패", HttpStatus.INTERNAL_SERVER_ERROR);
         }
      } else {
         return new ResponseEntity<>("로그인이 필요합니다", HttpStatus.UNAUTHORIZED);
      }
   }

   @GetMapping("/checkWishlistStatus.do")
   public Map<String, Boolean> checkWishlistStatus(@RequestParam int bnum, HttpSession session) {
      String id = (String) session.getAttribute("loginId");
      Map<String, Boolean> response = new HashMap<>();
      if (id != null) {
         // 로그인한 사용자일 경우 찜 상태를 확인
         boolean isWishlist = brandMapper.isInWishlist(id, bnum);
         response.put("isWishlist", isWishlist);
      } else {
         // 로그인하지 않은 사용자의 경우 기본값은 찜되지 않음(false)
         response.put("isWishlist", false);
      }
      return response;
   }

   @GetMapping("/brandSearch.do")
   public String brandSearch(@RequestParam("searchBrand") String searchBrand,
         @RequestParam("currentPageUrl") String currentPageUrl, HttpServletRequest req, Model model) {
      String msg = null;
      String url = currentPageUrl;
      String tablename = null;
      String search = sangkwondata.getCategories(searchBrand);
      if (search == null) {
         search = sangkwondata.getStoreName(searchBrand);

         if (search == null) {
            msg = "검색 결과 없음!";
            req.setAttribute("msg", msg);
            req.setAttribute("url", url);
            return "message";

         } else {
            rankingmapper.updateRank(search);
            tablename = sangkwonname.findKey(search);
            if (tablename == null) {
               msg = "검색 결과 없음!";
               req.setAttribute("msg", msg);
               req.setAttribute("url", url);
               return "message";
            }
         }

      } else {
         tablename = search;
      }

      return "redirect:/BrandList.do?tablename=" + tablename;
   }

   @RequestMapping("/start_up_costs.do")
   public String start_up_costs() {
      return "brand/start_up_costs";
   }

   @GetMapping("brandCostList.do")
   public String brandCostList(@RequestParam("serachString") String serachString, HttpServletRequest req) {
      String msg = null;
      String storeName = null;
      String search = sangkwondata.getStoreName(serachString);
      if (search == null) {
         msg = "검색 결과 없음";
         req.setAttribute("msg", msg);
         return "windowClose";
      } else {
         rankingmapper.updateRank(search);
         storeName = search;
      }

      String encodedStoreName = "";

      try {
         // storeName을 UTF-8로 인코딩
         encodedStoreName = URLEncoder.encode(storeName, StandardCharsets.UTF_8.toString());
      } catch (UnsupportedEncodingException e) {
         e.printStackTrace();
         // 적절한 예외 처리
      }
      // 인코딩된 storeName을 URL에 추가
      return "redirect:/brandData/apibulu?storeName=" + encodedStoreName;
   }
}