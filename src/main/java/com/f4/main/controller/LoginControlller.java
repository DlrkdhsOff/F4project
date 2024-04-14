package com.f4.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.f4.main.dto.LoginOkBean;
import com.f4.main.dto.MemberDTO;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.SaupMapper;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginControlller {

   @Autowired
   private F4Mapper f4mapper;
   @Autowired
   private SaupMapper saupmapper;

   @RequestMapping("/login.do")
   public String login() {
      return "login";
   }

   @RequestMapping("/adminmain.do")
   public String adminmain() {
      return "admin/adminmain";
   }

   @RequestMapping("/admin.do")
   public String admin(HttpServletRequest req) {
      req.setAttribute("msg", "관리자 로그인 페이지입니다!");
      req.setAttribute("url", "adminok.do");
      return "message";
   }

   @RequestMapping("/adminok.do")
   public String adminok() {
      return "admin/adminlogin";
   }

   @RequestMapping("/login_ok.do")
   public String loginOk(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute LoginOkBean loginOk,
         @RequestParam(required = false) String saveid, @RequestParam(required = false) String jadong) {
      // int res = loginOk.loginOk(memberDAO);
      String id = req.getParameter("id");
      MemberDTO dto = f4mapper.getMember(loginOk.getId());
      HttpSession session = req.getSession();
      int res = loginOk.loginOk(dto);
      
      String msg = null, url = null;
      switch (res) {
      case LoginOkBean.OK:
         String accept = saupmapper.getSaupAccept(id);
         Cookie ck = new Cookie("saveid", loginOk.getId());
         Cookie ck1 = new Cookie("jadong", loginOk.getPw());
         if (saveid != null) {
            if (jadong != null) {
               ck.setMaxAge(7 * 24 * 60 * 60);
               ck1.setMaxAge(7 * 24 * 60 * 60);
            } else {
               ck.setMaxAge(7 * 24 * 60 * 60);
               ck1.setMaxAge(0);
            }
         } else {
            if (jadong != null) {
               ck.setMaxAge(7 * 24 * 60 * 60);
               ck1.setMaxAge(7 * 24 * 60 * 60);
            } else {
               ck.setMaxAge(0);
               ck1.setMaxAge(0);
            }

         }
         resp.addCookie(ck);
         resp.addCookie(ck1);
         session.setAttribute("loginMember", dto);
         session.setAttribute("mbId", loginOk.getId());
         session.setAttribute("accept", accept);
         if (accept.equals("1")) {
                f4mapper.updateMember(id);
                MemberDTO dto2 = saupmapper.checkSa(id);
                req.setAttribute("saup", dto2);
            }
         msg = dto.getName() + "님이 로그인 하셨습니다.";
         url = "main1.do";
         
         break;
      case LoginOkBean.NOT_ID:
         msg = "없는 아이디 입니다. 다시 확인하시고 입력해 주세요";
         url = "login.do";
         break;
      case LoginOkBean.NOT_PW:
         msg = "비밀번호가 틀렸습니다. 다시 확인하시고 입력해 주세요";
         url = "login.do";
         break;
      case LoginOkBean.ERROR:
         msg = "DB 서버 오류 발생!! 관리자에게 문의해 주세요.";
         url = "main.do";
         break;
      }
      session.setAttribute("loginId", id);
      req.setAttribute("msg", msg);
      req.setAttribute("url", url);
      return "message";
   }

   @RequestMapping("/adminlogin_ok.do")
   public String adminloginOk(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute LoginOkBean loginOk,
         @RequestParam(required = false) String saveid, @RequestParam(required = false) String jadong) {
      // int res = loginOk.loginOk(memberDAO);
      String id = req.getParameter("id");
      MemberDTO dto = f4mapper.getMember(loginOk.getId());
      HttpSession session = req.getSession();
      int res = loginOk.loginOk(dto);
      String msg = null, url = null;
      switch (res) {
      case LoginOkBean.OK:
         session.setAttribute("loginMember", dto);
         msg = dto.getName() + "님이 로그인 하셨습니다.";
         url = "main_picture.do";
         break;
      case LoginOkBean.NOT_ID:
         msg = "없는 아이디 입니다. 다시 확인하시고 입력해 주세요";
         url = "adminok.do";
         break;
      case LoginOkBean.NOT_PW:
         msg = "비밀번호가 틀렸습니다. 다시 확인하시고 입력해 주세요";
         url = "adminok.do";
         break;
      case LoginOkBean.ERROR:
         msg = "DB 서버 오류 발생!! 관리자에게 문의해 주세요.";
         url = "main.do";
         break;
      }
      session.setAttribute("loginId", id);
      req.setAttribute("msg", msg);
      req.setAttribute("url", url);
      return "message";
   }

   @RequestMapping("/logout.do")
   public String logout(HttpServletRequest req) {
      HttpSession session = req.getSession();
      session.invalidate();
      req.setAttribute("msg", "로그아웃 되었습니다.");
      req.setAttribute("url", "main.do");
      return "message";
   }

}