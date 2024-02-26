package com.smhrd.textminer.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.mapper.JoinMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Getter;
import lombok.Setter;

@Controller
@Getter
@Setter
public class SigninCon {

	// HttpServletRequest service;

	@Autowired
	private JoinMapper joinMapper;
	
	@Autowired
	private HttpServletResponse response;

	// JoinDTO dto = new JoinDTO(null, null, null, null, null, null);

	// @PostMapping("/main")
	// public String sampleView(@RequestBody HashMap<String, String> map) {
	// String id = map.get("mb_id");
	// System.out.println(id);
	// String a = JoinMapper.selectJoinData();
	// dto.setTest(a);
	// model.addAttribute("sample", dto);
	// System.out.println(a);
	// return "main";
	// }
	
	@PostMapping("/")
	public ModelAndView servletReqeust(HttpServletRequest httpRequest) throws IOException {
		String mb_id = httpRequest.getParameter("mb_id").toString();
		String mb_pw = httpRequest.getParameter("mb_pw").toString();
		String mb_name = httpRequest.getParameter("mb_name").toString();
		String mb_email = httpRequest.getParameter("mb_email").toString();
		String mb_firm = httpRequest.getParameter("mb_firm").toString();
		String mb_call = httpRequest.getParameter("mb_call").toString();
		String hash = httpRequest.getParameter("hash");
		String[] hash_split = hash.split(", ");
		
		List<String> hashList = new ArrayList<>(3);
				
		for (int i = 0 ; i < hash_split.length; i ++) {
			
			hashList.add(hash_split[i]);
			
		}
		
		
		List<String> areaList = new ArrayList<>(Arrays.asList("서울", "인천", "부산", "대구", "대전", "광주", "울산", "세종", "경기도", "강원도", "충청북도", "충청남도", "전라북도"));
		List<String> area = new ArrayList<>(1);
		
		
		for(String i: hash_split ) {
			if (areaList.contains(i)) {
				area.add(i);
				hashList.remove(i);
			}
			
		}
		
		String mb_key1 = hashList.get(0);
		String mb_key2 =  hashList.get(1);;
		String mb_key3 =  hashList.get(2);;
		String mb_region = area.get(0);
		
		System.out.println(mb_id);
		
		JoinDTO dto = new JoinDTO(mb_id, mb_pw, mb_name, mb_email, mb_firm, mb_call, mb_key1, mb_key2, mb_key3, mb_region);

		int cnt = joinMapper.InsertJoinData(dto);
		
		ModelAndView mav = new ModelAndView();
		
		if(cnt>0) {
			
			System.out.println("가입 성공 !");
			 mav.addObject("mb_id", mb_id);
		     mav.setViewName("join_success");
			
			// response.sendRedirect("join_success.jsp");
			
		} else {
			
			System.out.println("가입 실패 !");
			// mav.addObject("error", "가입 실패");
	        mav.setViewName("main");
			// response.sendRedirect("main.jsp");
			
		
//		System.out.println("0");
//		ModelAndView mav = new ModelAndView();
//		System.out.println("00");
//	    mav.addObject("mb_id", mb_id);
//	    System.out.println("000");
//	    mav.setViewName("join_success.jsp");
//	    System.out.println("0000");
	    //return "join_success.jsp";
		//return "main";
			
	}
		return mav;
	}
}
