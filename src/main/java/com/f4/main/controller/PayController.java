package com.f4.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class PayController {

   @RequestMapping("/paymentHistory.do")
    public String showPaymentHistory(HttpServletRequest req) {
      String imp_uid = req.getParameter("imp_uid");
      String dealId = req.getParameter("dealId");
      String amount = req.getParameter("amount");
      String name = req.getParameter("name");
      String period = req.getParameter("period");
      String msg = req.getParameter("msg");

      req.setAttribute("msg", msg);
        return "windowClose"; 
    }
  
   

}