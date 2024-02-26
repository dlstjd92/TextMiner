package com.smhrd.textminer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.textminer.dto.BoardDTO;
import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.myDTO;
import com.smhrd.textminer.mapper.MypageMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MypageCon {

	@Autowired
	MypageMapper mypagemapper;

	@GetMapping("/mypage")
	protected String mypageCon(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Model model) {

		JoinDTO dto = (JoinDTO) session.getAttribute("dto");
		String mb_id = dto.getMb_id();

		String pageParam = request.getParameter("page");
		int page = 1; // 초기값 1설정

		if (pageParam != null) {
			page = Integer.parseInt(pageParam);
		}

		int limit = 10;
		int offset = (page - 1) * limit;
		
		int totalCount = mypagemapper.getmyCount(mb_id);

		int totalPage = (totalCount % limit == 0) ? totalCount / limit : totalCount / limit + 1;

		List<BoardDTO> myboardList = mypagemapper.selectmyList(mb_id, offset, limit);

		session = request.getSession();

		myDTO mydto = new myDTO(totalCount, page, totalPage, limit, offset);

		session.setAttribute("mypage", myboardList);

		// model.addAttribute("mypage", myboardList);

//		  System.out.println(myboardList.get(0).getB_title());

		session.setAttribute("mydto", mydto);

//	      session.setAttribute("cnt", totalCount);
//	      session.setAttribute("currentPage", page);
//	      session.setAttribute("totalPage", totalPage);
//	      session.setAttribute("limit", limit);
//	      session.setAttribute("offset", offset);

		return "mypage";

	}

	@GetMapping("/mydel")
	protected String mydel(HttpServletRequest request, HttpSession session) {

		JoinDTO dto = (JoinDTO) session.getAttribute("dto");

		int seq = Integer.parseInt(request.getParameter("seq"));

		String mb_id = dto.getMb_id();

		String pageParam = request.getParameter("page");
		int page = 1; // 초기값 1설정

		if (pageParam != null) {
			page = Integer.parseInt(pageParam);
		}

		int limit = 10;
		int offset = (page - 1) * limit;

		mypagemapper.mydel(seq, mb_id);

		int totalCount = mypagemapper.getmyCount(mb_id);
		

		int totalPage = (totalCount % limit == 0) ? totalCount / limit : totalCount / limit + 1;

		List<BoardDTO> myboardList = mypagemapper.selectmyList(mb_id, offset, limit);

		session = request.getSession();

		myDTO mydto = new myDTO(totalCount, page, totalPage, limit, offset);

		session.setAttribute("mypage", myboardList);

		session.setAttribute("mydto", mydto);

		return "/mypage";
	}

}
