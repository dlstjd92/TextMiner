package com.smhrd.textminer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.textminer.dto.BoardDTO;
import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.MainDTO;
import com.smhrd.textminer.mapper.MainMapper;

import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainCon {

	@Autowired
	private MainMapper mainMapper;

	@RequestMapping("/main_loginsuccess")
	// @PostMapping("/")
	public String servletReqeust(HttpServletRequest request) {

		System.out.println("/main_loginsuccess");

		// MainDTO mainDTO = new MainDTO();

		/*
		 * mainDTO.setB_title(request.getParameter("b_title"));
		 * mainDTO.setB_sdate(request.getParameter("b_sdate"));
		 * mainDTO.setB_edate(request.getParameter("b_edate"));
		 * mainDTO.setB_conts(request.getParameter("b_conts"));
		 */

		// mainDTO.addAttribute("mainDTO", mainDTO);

		HttpSession session = request.getSession();

		JoinDTO jo = (JoinDTO) session.getAttribute("dto");

		String k1 = jo.getMb_key1();
		String k2 = jo.getMb_key2();
		String k3 = jo.getMb_key3();
		String re = jo.getMb_region();
		List<MainDTO> mainList = mainMapper.selectKeyList(k1, k2, k3, re);

		if (mainList.size() < 8) {
			System.out.println(mainList.size());
			mainList = mainMapper.selectMainList();

		} else {

			mainList = mainMapper.selectKeyList(k1, k2, k3, re);
		}

		System.out.println(mainList.size());

		session.setAttribute("list", mainList);

		System.out.println(mainList);

		return "main_loginsuccess";

	}

	// @GetMapping("/") // 메인 페이지 관련
	@GetMapping("/")
	public String servlepRequest(HttpServletRequest request) {

		HttpSession session = request.getSession();

		List<MainDTO> mainList = mainMapper.selectMainList();

		session.setAttribute("list", mainList);

		System.out.println(mainList);

		return "main";
	}

	@GetMapping("/mymo")
	public String mymo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		JoinDTO jo = (JoinDTO) session.getAttribute("dto");
		
		String k1 = jo.getMb_key1();
		String k2 = jo.getMb_key2();
		String k3 = jo.getMb_key3();
		String re = jo.getMb_region();

		List<MainDTO> mainList = mainMapper.selectKeyList(k1, k2, k3, re);
		

		session.setAttribute("list", mainList);

		System.out.println(mainList);

		return "main_loginsuccess";
	}

	@GetMapping("/myreg")
	public String myreg(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		JoinDTO jo = (JoinDTO) session.getAttribute("dto");
		
		String k1 = jo.getMb_key1();
		String k2 = jo.getMb_key2();
		String k3 = jo.getMb_key3();
		String re = jo.getMb_region();
		
		List<MainDTO> mainList = mainMapper.selectKeyList(k1, k2, k3, re);
		

		session.setAttribute("list", mainList);

		System.out.println(mainList);

		return "main_loginsuccess";
	}

}
