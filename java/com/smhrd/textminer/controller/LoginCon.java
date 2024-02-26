package com.smhrd.textminer.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.LoginDTO;
import com.smhrd.textminer.dto.MainDTO;
import com.smhrd.textminer.mapper.JoinMapper;
import com.smhrd.textminer.mapper.LoginMapper;
import com.smhrd.textminer.mapper.MainMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginCon {

	@Autowired
	LoginMapper loginMapper;
	MainMapper mainMapper;

	HttpServletResponse response;

	@PostMapping("/login")
	public String servletReqeust(HttpServletRequest request) {

		String mb_id = request.getParameter("mb_id");
		String mb_pw = request.getParameter("mb_pw").toString();

		System.out.println(mb_id + " " + mb_pw);

		LoginDTO dto = new LoginDTO(mb_id, mb_pw);

//		System.out.println(dto);

		JoinDTO loginUser = loginMapper.selectMember(dto);

		if (loginUser != null) {
			System.out.println("로그인 성공 !!@#$");

			HttpSession session = request.getSession();

			session.setAttribute("dto", loginUser);
			
			return "redirect:/main_loginsuccess";
			
		} else {

			System.out.println("로그인 실패 !");
			
			return "loginFail";

		}

		

	}

}
