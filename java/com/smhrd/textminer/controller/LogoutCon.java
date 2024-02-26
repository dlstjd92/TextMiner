package com.smhrd.textminer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smhrd.textminer.dto.JoinDTO;

import jakarta.servlet.http.HttpSession;

@Controller
public class LogoutCon {

	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	
		session.invalidate(); // 세션 무효화
//		session.removeAttribute("dto");
			
		System.out.println("여기를거쳐서 나가긴하는거니?");	
		return "logout_success"; // 메인페이지로 리다이렉트

}
	
	@GetMapping("/logout_success")
	public String logoutSuccess() {
	    return "logout_success";
	}
	
}
