package com.smhrd.textminer.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.smhrd.textminer.dto.contsDTO;
import com.smhrd.textminer.mapper.ContsMapper;

@Controller
public class ContsCon {
	
	@Autowired
	ContsMapper ContsMapper;
	
	@RequestMapping("/conts1")
	public String servletReqeust(HttpServletRequest httpRequest) throws IOException {
		System.out.println("다 돌음1");
		int b_seq = Integer.parseInt(httpRequest.getParameter("b_seq"));

		System.out.println(b_seq);
		
		contsDTO conts = new contsDTO();

		conts = ContsMapper.conts(b_seq);
		
		
		
		HttpSession session = httpRequest.getSession();
		
		session.setAttribute("conts", conts);
		
		

		return "conts";
}
	
	
	
	
	
	
	
	
}	
	