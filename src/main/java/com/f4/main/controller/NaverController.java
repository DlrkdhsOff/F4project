package com.f4.main.controller;
 
import java.io.IOException;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.f4.main.dto.MemberDTO;
import com.f4.main.service.F4Mapper;
import com.f4.main.service.ReboardMapper;
import com.github.scribejava.core.model.OAuth2AccessToken;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/** * Handles requests for the application home page. */
@Controller
public class NaverController {
   
   @Autowired
   private F4Mapper f4mapper;
   
   @Autowired
   private ReboardMapper reboardmapper;
   
   /* NaverLoginBO */
   private NaverLoginBO naverLoginBO;
   private String apiResult = null;

   @Autowired
   private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
      this.naverLoginBO = naverLoginBO;
   }

   // 로그인 첫 화면 요청 메소드
   @RequestMapping(value = "/login.do", method = { RequestMethod.GET, RequestMethod.POST })
   public String login(Model model, HttpSession session) {
      /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
      String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
      // https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
      // redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
      //System.out.println("네이버:" + naverAuthUrl);
      // 네이버   
      model.addAttribute("url", naverAuthUrl);
      return "login";
   }
   // 네이버 로그인 성공시 callback호출 메소드

   @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
   public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest req)
         throws IOException, ParseException {
      
      String id = null;
      
      MemberDTO dto = new MemberDTO();
      //System.out.println("여기는 callback");
      OAuth2AccessToken oauthToken;
      oauthToken = naverLoginBO.getAccessToken(session, code, state);
      
      // 1. 로그인 사용자 정보를 읽어온다.
      apiResult = naverLoginBO.getUserProfile(oauthToken); // String형식의 json데이터
      /**
       * apiResult json 구조 {"resultcode":"00", "message":"success",
       * "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
       **/
      // 2. String형식인 apiResult를 json형태로 바꿈
      
      JSONParser parser = new JSONParser();
      Object obj = parser.parse(apiResult);
      JSONObject jsonObj = (JSONObject) obj;
      
      // 3. 데이터 파싱
      // Top레벨 단계 _response 파싱
      JSONObject response_obj = (JSONObject)jsonObj.get("response");
      // response의 nickname값 파싱
      String nickname = (String) response_obj.get("nickname");
      //System.out.println(nickname);
      String name = (String) response_obj.get("name");
      String email= (String) response_obj.get("email");
      //System.out.println(email);
      
      session.setAttribute("loginId", email);
      
         dto.setId(email);
      dto.setPw("0");
      dto.setName(name);
      dto.setEmail1(email);
      dto.setEmail2("0");
      dto.setTel1("010");
      dto.setTel2("0");
      dto.setTel3("0");
      dto.setBnr(0);
      dto.setConfirmpassword("0");
      dto.setJoindate("0");
      dto.setKind(2);
      dto.setPostcode("0");
      dto.setAddress("0");
      dto.setDetailAddress("0");
      
      if(f4mapper.getMember(dto.getId()) == null) {
         
         int res = f4mapper.insertMember(dto);
         if(res > 0) {
            req.setAttribute("msg", dto.getName()+"님이 로그인 하셨습니다.");
            req.setAttribute("url", "main.do");
            session.setAttribute("loginMember", dto);
         }else {
            req.setAttribute("msg", "로그인 실패");
            req.setAttribute("url", "login.do");
         }
      }else {
         
         req.setAttribute("msg", dto.getName()+"님이 로그인 하셨습니다.");
         req.setAttribute("url", "main.do");
         
         session.setAttribute("loginMember", dto);
      }
      return "message";
   }   
}