package com.f4.main.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.f4.main.dto.MainMiddleImageDTO;
import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.SaupDTO;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.MiddelImageMapper;
import com.f4.main.service.SaupMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectController {

   @Autowired
   private F4Mapper f4mapper;
   
   @Autowired
   private SaupMapper saupmapper;

   @Autowired
   private MiddelImageMapper middleimagemapper;

   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Model model) {
      MainMiddleImageDTO dto = middleimagemapper.listimgae();
      model.addAttribute("middleImage", dto);
      return "main";
   }

   @RequestMapping("/main1.do")
   public String main1(HttpServletRequest req, Model model) {
      HttpSession session = req.getSession();
      Object id = session.getAttribute("loginId");
      MemberDTO dto2 = f4mapper.checkSa(id);
      session.setAttribute("saup", dto2);
      MainMiddleImageDTO dto = middleimagemapper.listimgae();
      model.addAttribute("middleImage", dto);
      return "main";
   }

   @RequestMapping("/main.do")
   public String main(Model model) {
      MainMiddleImageDTO dto = middleimagemapper.listimgae();
      model.addAttribute("middleImage", dto);
      return "main";
   }

   @RequestMapping("/membership.do")
   public String membership(HttpServletRequest req, String mode) {
      HttpSession session = req.getSession();
      session.setAttribute("mode", mode);
      return "membership/membership";
   }

   @RequestMapping("/ready.do")
   public String ready() {
      return "ready";
   }

   @RequestMapping("/ready1.do")
   public String ready1() {
      return "ready1";
   }

   @RequestMapping(value = "/membership_ok.do", method = RequestMethod.GET)
   public String membershipclose() {
      return "membership/membershipClose";
   }

   @RequestMapping(value = "/f4_input.do")
   public String memberinput() {
      return "membership/f4_input";
   }

   private static final Logger log = LoggerFactory.getLogger(ProjectController.class);

// 이메일 인증
   @RequestMapping(value = "/EmailVerification.do", method = RequestMethod.GET)
   public String EmailVerification(HttpServletRequest req, @RequestParam("email") String email) {
      log.info("전달 받은 이메일 주소: " + email);
      // 난수의 범위 111111 ~ 999999 (6자리 난수)
      Random random = new Random();
      int checkNum = random.nextInt(888888) + 111111;
      // 이메일 보낼 양식
      String setFrom = "kaondiaryb@naver.com";
      String toMail = email;
      String title = "회원가입 인증 이메일 입니다.";
      String content = "인증 코드는 " + checkNum + " 입니다." + "<br>" + "해당 인증 코드를 인증 코드 확인란에 기입하여 주세요.";
      // JavaMail 디버그 활성화
      JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
      mailSender.setHost("smtp.naver.com");
      mailSender.setPort(587);
      mailSender.setUsername("kaondiaryb");
      mailSender.setPassword("dlrkdhs010423-");
      Properties props = mailSender.getJavaMailProperties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.ssl.trust", "smtp.naver.com");
      props.put("mail.smtp.ssl.protocols", "TLSv1.2");
      mailSender.setJavaMailProperties(props);
      // JavaMail의 디버그를 활성화하려면 다음 라인을 추가합니다.
      mailSender.getJavaMailProperties().setProperty("mail.debug", "true");
      try {
         MimeMessage message = mailSender.createMimeMessage(); // Spring에서 제공하는 mail API
         MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
         helper.setFrom(setFrom);
         helper.setTo(toMail);
         helper.setSubject(title);
         helper.setText(content, true);

         mailSender.send(message);
      } catch (Exception e) {
         e.printStackTrace();
      }
      log.info("랜덤 숫자: " + checkNum);
      // 세션에 checkNum 값 저장
      HttpSession session = req.getSession();
      session.setAttribute("checkNum", checkNum);
      return "membership/EmailVerification";
   }

   @GetMapping(value = "/EmailVerification_ok.do", produces = "text/plain;charset=UTF-8")
   @ResponseBody
   public ResponseEntity<String> emailVerificationOk(HttpServletRequest req,
         @RequestParam("VerificationCode") String verificationCode) {
      HttpSession session = req.getSession();
      Integer checkNum = (Integer) session.getAttribute("checkNum");
      System.out.println("확인: " + checkNum);
      System.out.println("입력: " + verificationCode);
      try {
         int enteredCode = Integer.parseInt(verificationCode); // 문자열을 정수로 변환
         if (checkNum != null && checkNum == enteredCode) {
            String response = "인증 성공";
            session.setAttribute("VerificationCode", enteredCode);
            return new ResponseEntity<>(response, HttpStatus.OK);
         } else {
            String response = "인증 실패";
            return new ResponseEntity<>(response, HttpStatus.OK);
         }
      } catch (NumberFormatException e) {
         String response = "올바른 형식의 인증 코드를 입력하세요."; // 숫자가 아닌 형식의 입력 처리
         return new ResponseEntity<>(response, HttpStatus.BAD_REQUEST);
      }
   }

   @RequestMapping(value = "/f4_input_ok.do", method = RequestMethod.POST)
   public String insertMember(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
      HttpSession session = req.getSession();
      int res = 0;
      SaupDTO sdto = new SaupDTO();
      String id = req.getParameter("id");
      String name = req.getParameter("name");
      String pw = req.getParameter("pw");
      String confirmpassword = req.getParameter("confirmpassword");
      String tel1 = req.getParameter("tel1");
      String tel2 = req.getParameter("tel2");
      String tel3 = req.getParameter("tel3");
      String email1 = req.getParameter("email1");
      String price = req.getParameter("flexRadioDefault");
      String mode = (String) session.getAttribute("mode");
      String tel = tel1+tel2+tel3;
      String certify = (String)session.getAttribute("certify");
      
      Map<String, String> paramMap = new HashMap<>();
      paramMap.put("id", dto.getId());
      paramMap.put("pw", dto.getPw());
      // 여기서 #{id}와 #{pw}는 쿼리의 파라미터로 받을 값을 나타냅니다.
      // 따라서 Java 코드에서는 이에 해당하는 값을 넘겨주어야 합니다.
      // 이때, Java 코드에서 전달하는 객체 또는 맵의 키값이 id와 pw로 일치해야 올바르게 값이 매핑됩니다.
      // 따라서 Java 코드에서는 다음과 같이 값을 설정해주어야 합니다:
      Boolean isIdChecked = (Boolean) session.getAttribute("ID_CHECK_SESSION_KEY");
      if (isIdChecked == null || !isIdChecked) {
         req.setAttribute("msg", "중복 확인을 해주세요.");
         req.setAttribute("url", "f4_input.do");
         session.setAttribute("id", id);
         session.setAttribute("name", name);
         session.setAttribute("pw", pw);
         session.setAttribute("confirmpassword", confirmpassword);
         session.setAttribute("tel2", tel2);
         session.setAttribute("tel3", tel3);
         session.setAttribute("email1", email1);
         return "message";
      }
      int duplicateCount = f4mapper.checkIdAndPassword(paramMap);
      if (duplicateCount > 0) {
         req.setAttribute("msg", "이미 존재하는 아이디와 비밀번호입니다.");
         req.setAttribute("url", "f4_input.do");
         return "message";
      }
      boolean idCheck = f4mapper.checkId(id);
      if (dto.getId().equals("admin")) {
         req.setAttribute("msg", "사용할 수 없는 아이디입니다.");
         req.setAttribute("url", "f4_input.do");
         return "message";
      } else if (idCheck) {
         req.setAttribute("msg", "이미 존재하는 아이디입니다.");
         req.setAttribute("url", "f4_input.do");
         return "message";
      }
      if (!dto.getPw().equals(dto.getConfirmpassword())) {
         req.setAttribute("msg", "비밀번호와 비밀번호 확인이 일치하지 않습니다.");
         req.setAttribute("url", "f4_input.do");
         return "message";
      }
      // 이메일 인증 체크
      Integer VerificationCode = (Integer) session.getAttribute("VerificationCode");
      if (VerificationCode == null) {
         req.setAttribute("msg", "이메일 인증을 해주세요.");
         req.setAttribute("url", "f4_input.do");
         return "message";
      }
      // 비밀번호 조건을 검사하고 안맞으면 회원가입 못하게
      if (!isValidPassword(dto.getPw())) {
         req.setAttribute("msg", "비밀번호는 8자리 이상이어야 하며, 특수문자를 하나 이상 포함해야 합니다.");
         req.setAttribute("url", "f4_input.do");
         return "forward:/WEB-INF/views/message.jsp";
      }
      session.removeAttribute("ID_CHECK_SESSION_KEY");
      session.removeAttribute("id");
      session.removeAttribute("name");
      session.removeAttribute("pw");
      session.removeAttribute("confirmpassword");
      session.removeAttribute("tel2");
      session.removeAttribute("tel3");
      session.removeAttribute("email1");
      
      if (mode.equals("BA")) {
          
          List<SaupDTO> list = saupmapper.getSaupDetail(id);
          String check = list.isEmpty() ? null : list.get(0).getAccept();
          Map<String, String> params = (Map<String, String>)session.getAttribute("saup_params");
          if(certify == "B") {
             res = f4mapper.insertMember(dto);
             if ("2".equals(check)) {
                saupmapper.getSaupUpdateAll(params);
             }else {
                saupmapper.insertSaup(params);
             }
             f4mapper.updatememberkind(id);
          }
          else if(certify==null || certify=="A") {
             req.setAttribute("msg", "인증하기를 해주세요");
             req.setAttribute("url", "f4_input.do");
             session.setAttribute("id", id);
             session.setAttribute("name", name);
             session.setAttribute("pw", pw);
             session.setAttribute("confirmpassword", confirmpassword);
             session.setAttribute("tel2", tel2);
             session.setAttribute("tel3", tel3);
             session.setAttribute("email1", email1);
             return "message";
          }
          if (res > 0 || VerificationCode != null || certify == "B") {
             session.removeAttribute("VerificationCode");
             // System.out.println(session.getAttribute("VerificationCode")+" 삭제 완");
             req.setAttribute("msg", "f4 멤버가 되신걸 환영합니다!");
             req.setAttribute("url", "login.do");
          }
       }
       else if (mode.equals("YC")) {
          res = f4mapper.insertMember(dto);
          f4mapper.updateprice(price, id);
          sdto.setId(id);
          sdto.setName(name);
          sdto.setTel(tel);
          sdto.setPlace("0");
          sdto.setMemo("0");
          sdto.setStore("0");
          sdto.setAccept("3");
          saupmapper.insertsaup(sdto);
          
          if (res > 0 || VerificationCode != null) {
             session.removeAttribute("VerificationCode");
             // System.out.println(session.getAttribute("VerificationCode")+" 삭제 완");
             req.setAttribute("msg", "f4 멤버가 되신걸 환영합니다!");
             req.setAttribute("url", "login.do");
          }
       }
       
       
       // session.setAttribute("name", name);
       return "forward:/WEB-INF/views/message.jsp";
   }

   // 비밀번호 유효성 검사 메소드 추가
   // ^: 문자열의 시작을 나타냅니다.
   // (?=.*[!@#$%^&*]): 전방 탐색(lookahead)을 사용하여 특수문자가 적어도
   // 하나 이상 포함되어야 함을 나타냅니다.
   // .*: 아무 문자(또는 없음)을 의미합니다.
   // [!@#$%^&*]: 특수문자 중 하나를 의미합니다.
   // [A-Za-z\\d@$!%*#?&]{8,}: 영문 대소문자, 숫자, 특정 특수문자 중에서
   // 적어도 8자 이상이어야 함을 의미합니다.

   private boolean isValidPassword(String password) {
      // 비밀번호가 8자리 이상이면서 특수문자를 포함하는지 체크
      String passwordRegex = "^(?=.*[!@#$%^&*])[A-Za-z\\d@$!%*#?&]{8,}$";
      return password.matches(passwordRegex);
   }

   private boolean isValidSsn(String Ssn) {
      // 전화번호가 숫자로만 이루어져 있는지 확인하는 정규표현식
      String phoneRegex = "^[0-9]*$";
      return Ssn.matches(phoneRegex);
   }

   @RequestMapping(value = "/idCheck.do")
   public String Idcheckok(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
      String id = req.getParameter("id");
      String name = req.getParameter("name");
      String pw = req.getParameter("pw");
      String confirmpassword = req.getParameter("confirmpassword");
      String tel2 = req.getParameter("tel2");
      String tel3 = req.getParameter("tel3");
      String email1 = req.getParameter("email1");
      HttpSession session = req.getSession();
      boolean isMember = f4mapper.checkId(id);
      if (dto.getId().equals("admin")) {
         session.removeAttribute("ID_CHECK_SESSION_KEY");
         req.setAttribute("msg", "사용할 수 없는 아이디입니다.");
         req.setAttribute("url", "f4_input.do");
      } else if (dto.getId().equals("")) {
         req.setAttribute("msg", "아이디를 입력하세요");
         req.setAttribute("url", "f4_input.do");
      } else if (isMember) {
         session.removeAttribute("ID_CHECK_SESSION_KEY");
         req.setAttribute("msg", "사용중인 아이디입니다");
         req.setAttribute("url", "f4_input.do");
      } else {
         session.setAttribute("ID_CHECK_SESSION_KEY", true);
         req.setAttribute("msg", "회원가입해주세요.");
         req.setAttribute("url", "f4_input.do");
      }
      session.setAttribute("isMember", isMember);
      session.setAttribute("id", id);
      session.setAttribute("name", name);
      session.setAttribute("pw", pw);
      session.setAttribute("confirmpassword", confirmpassword);
      session.setAttribute("tel2", tel2);
      session.setAttribute("tel3", tel3);
      session.setAttribute("email1", email1);
      return "message";
   }

   @RequestMapping("/map.do")
   public String map() {
      return "map";
   }

   @RequestMapping(value = "/searchMember.do", method = RequestMethod.GET)
   public String searchMember(HttpServletRequest req) {
      return "login/searchmember";
   }

   @RequestMapping(value = "/searchMember.do", method = RequestMethod.POST)
   public String searchOkMember(HttpServletRequest req, @RequestParam Map<String, String> params) {
      // String msg = memberDAO.searchMember(params);
      String msg = f4mapper.searchMember(params);
      req.setAttribute("msg", msg);
      return "closeWindow";
   }

   @RequestMapping("/cencleClose.do")
   public String cencle() {
      return "cencleClose";
   }

   @RequestMapping("updateMember.do")
   public String update(HttpServletRequest req, @ModelAttribute MemberDTO dto) {
	   HttpSession session = req.getSession();
	    Object id = session.getAttribute("loginId");
	    if (id != null) {
	        MemberDTO dto2 = f4mapper.getReboard((String) id);
	        req.setAttribute("getMember", dto2);
	    }

	    // 비밀번호가 유효한지 확인
	    if (!isValidPassword(dto.getPw())) {
	        req.setAttribute("msg", "비밀번호는 8자리 이상이어야 하며, 특수문자를 하나 이상 포함해야 합니다.");
	        return "mypage";
	    }
	    // 비밀번호가 유효하다면 회원 수정 진행
	    int res = f4mapper.updateMember(dto);

	    if (res > 0) {
	        req.setAttribute("msg", "회원수정성공!!");
	        req.setAttribute("url", "mypage.do");
	    } else {
	        req.setAttribute("msg", "회원수정실패!!");
	        req.setAttribute("url", "mypage.do");
	    }

	    return "message";
	}

   @RequestMapping("delete.do")
   public String delete(HttpServletRequest req) {
      HttpSession session = req.getSession();
      Object id = session.getAttribute("loginId");
      int res = f4mapper.deleteMember(id);
      if (res > 0) {
         req.setAttribute("msg", "탈퇴 되었습니다");
         req.setAttribute("url", "main.do");
      } else {
         req.setAttribute("msg", "탈퇴 되지 않았습니다");
         req.setAttribute("url", "mypage.do");
      }
      session.invalidate();
      return "message";
   }

   @RequestMapping("dong2.do")
   public String dong2() {

      return "/membership/dong2";
   }
   
   @RequestMapping("pay.do")
    public String pay() {
       
       return "/membership/pay";
    }
   
}