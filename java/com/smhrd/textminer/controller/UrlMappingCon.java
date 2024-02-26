package com.smhrd.textminer.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.textminer.dto.TestDTO;
import com.smhrd.textminer.mapper.TestMapper;

@Controller
public class UrlMappingCon {

	TestDTO dto = new TestDTO(null);

	// @Autowired TestMapper TestMapper;

//	@GetMapping("/") // 메인 페이지 관련
//	public String root() {
//		System.out.println("메인페이지 출력");
//		return "main";
//	}
	/*
	 * @GetMapping("/lo_main") // 로그인-메인페이지 public String loginroot() {
	 * System.out.println("로그인메인페이지 출력"); return "main_loginsuccess"; }
	 */


	@GetMapping("/signin") // 회원가입
	public String signView() {
		System.out.println("회원가입페이지 출력");
		return "signin";
	}
	

	@GetMapping("/login")
	public String loginView() {
		System.out.println("로그인 페이지 출력");
		return "login";
	}

//	 public String loginView() {
//		 String a = TestMapper.selectSampleData();
//		 // dto.setTest(a);
//		 //model.addAttribute("sample",dto);
//		 System.out.println(a);	
//		 return "login";
//		 
//		 
//	 }
	
//	@GetMapping("/board")
//	public String boardView() {
//		System.out.println("모집공고 페이지 출력");
//		return "board";
//	}

//	@GetMapping("/conts")
//	public String contsView() {
//		System.out.println("세부내역페이지 출력");
//		return "conts";
//	}

//	@GetMapping("/mypage")
//	public String mypageView() {
//		System.out.println("마이페이지 출력");
//		return "mypage";
//	}
	
	
	
	
	@GetMapping("/mypage_calendar")
	public String mypage_calendarView() {
		System.out.println("마이페이지 캘린더 출력");
		return "mypage_calendar";
	}

	
	@GetMapping("/mypage_member")
	public String mypage_member() {
		System.out.println("마이페이지 정보수정 출력");
		return "mypage_member";
	}

	
	
	
	
	
	
	
	
	
	
	
}
