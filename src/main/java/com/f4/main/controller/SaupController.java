package com.f4.main.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.f4.main.dto.MemberDTO;
import com.f4.main.dto.SaupDTO;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.SaupMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class SaupController {

   
   @Autowired
   private SaupMapper saupmapper;
   
   @Autowired
   private F4Mapper f4mapper;

    @RequestMapping("/resaup.do")
      public String resauplogin(HttpServletRequest req, Model model) {
         HttpSession session = req.getSession();
        
         String id=req.getParameter("id");
         String name = req.getParameter("name");
         String tel1 = req.getParameter("tel1");
         String tel2 = req.getParameter("tel2");
         String tel3 = req.getParameter("tel3");
         if(id==null && name==null && tel1==null && tel2==null && tel3==null) {
            String loginId = (String) session.getAttribute("loginId");
             MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
            id = loginId;
            name = loginMember.getName();
            tel1 = loginMember.getTel1();
            tel2 = loginMember.getTel2();
            tel3 = loginMember.getTel3();
         }
         String tel = tel1+tel2+tel3;
         model.addAttribute("id", id);
         model.addAttribute("name", name);
         model.addAttribute("tel", tel);
         return "login/resauplogin";

      }
    
      @RequestMapping(value = "/resaup_ok.do", method = RequestMethod.POST)
      public String resaup(HttpServletRequest req, Model model) {
          String msg, url;
          try {
              req.setCharacterEncoding("UTF-8");
              HttpSession session = req.getSession();
              String id = req.getParameter("id");
              List<SaupDTO> list = saupmapper.getSaupDetail(id);
              Map<String, String> params = new HashMap<>();
              params.put("id", id);
              
              String check = list.isEmpty() ? null : list.get(0).getAccept();

              if ("2".equals(check)) {
                 params.put("name", req.getParameter("name"));
                 params.put("place", req.getParameter("place"));
                  params.put("store", req.getParameter("store"));
                  params.put("memo", req.getParameter("memo"));
                  params.put("accept", "0");
                  saupmapper.getSaupUpdateAll(params);
              } else {
                  params.put("name", req.getParameter("name"));
                  params.put("tel", req.getParameter("tel"));
                  params.put("place", req.getParameter("place"));
                  params.put("store", req.getParameter("store"));
                  params.put("memo", req.getParameter("memo"));
                  params.put("accept", "0");

                  saupmapper.insertSaup(params);
              }

              msg = "요청 완료 되었습니다.";
              
              
          } catch (UnsupportedEncodingException e) {
              e.printStackTrace();
              msg = "인코딩 오류가 발생했습니다. 다시 시도해 주세요.";
          }
          req.setAttribute("msg", msg);
          return "windowClose";
      }
      
      @RequestMapping("/saup.do")
      public String sauplogin(HttpServletRequest req, Model model) {
         HttpSession session = req.getSession();
        
         String id=req.getParameter("id");
         String name = req.getParameter("name");
         String tel1 = req.getParameter("tel1");
         String tel2 = req.getParameter("tel2");
         String tel3 = req.getParameter("tel3");
         String certify = req.getParameter("certify");
         session.setAttribute("certify", certify);
         if(id==null && name==null && tel1==null && tel2==null && tel3==null) {
            String loginId = (String) session.getAttribute("loginId");
             MemberDTO loginMember = (MemberDTO) session.getAttribute("loginMember");
            id = loginId;
            name = loginMember.getName();
            tel1 = loginMember.getTel1();
            tel2 = loginMember.getTel2();
            tel3 = loginMember.getTel3();
         }
         String tel = tel1+tel2+tel3;
         model.addAttribute("id", id);
         model.addAttribute("name", name);
         model.addAttribute("tel", tel);
         return "login/sauplogin";

      }

      @RequestMapping(value = "/saup_ok.do", method = RequestMethod.POST)
      public String saup(HttpServletRequest req, Model model) {
         HttpSession session = req.getSession();
          String msg;
          String certify = (String)session.getAttribute("certify");
          certify = "B";
          try {
              req.setCharacterEncoding("UTF-8");
              String id = req.getParameter("id");
              List<SaupDTO> list = saupmapper.getSaupDetail(id);
              Map<String, String> params = new HashMap<>();
              params.put("id", id);
              
              String check = list.isEmpty() ? null : list.get(0).getAccept();

              if ("2".equals(check)) {
                 params.put("name", req.getParameter("name"));
                 params.put("place", req.getParameter("place"));
                  params.put("store", req.getParameter("store"));
                  params.put("memo", req.getParameter("memo"));
                  params.put("accept", "0");
                  session.setAttribute("saup_params", params);
                  session.setAttribute("certify", certify);
              } else {
                  params.put("name", req.getParameter("name"));
                  params.put("tel", req.getParameter("tel"));
                  params.put("place", req.getParameter("place"));
                  params.put("store", req.getParameter("store"));
                  params.put("memo", req.getParameter("memo"));
                  params.put("accept", "0");
                  session.setAttribute("saup_params", params);
                  session.setAttribute("certify", certify);
              }

              msg = "확인되었습니다.";

          } catch (UnsupportedEncodingException e) {
              e.printStackTrace();
              msg = "인코딩 오류가 발생했습니다. 다시 시도해 주세요.";
          }
          req.setAttribute("msg", msg);
          return "windowClose";
      }
}