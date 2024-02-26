package com.smhrd.textminer.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.mapper.ContsMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@Controller
public class AjaxCon {
	
	@Autowired
	ContsMapper contsmapper;
	
	
	
	@GetMapping("/AjaxCon")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		System.out.println("에이젝스 넘어옴");
		
		int b_seq = Integer.parseInt(request.getParameter("seq"));
		
		System.out.println(b_seq);
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
	    
	    JoinDTO dto = (JoinDTO)session.getAttribute("dto");
		
	   try {
	    	System.out.println("트라이문 안");
	    	
			String mb_id = dto.getMb_id();
			
			
			
			contsmapper.scrap(mb_id, b_seq);
			
			
			out.print("성공");
			System.out.println("성공");
	  }catch (Exception e) {
			out.print("실패");
			System.out.println("실패");
		}
		
		
		
	}
	
	
	
	
	
	

}
