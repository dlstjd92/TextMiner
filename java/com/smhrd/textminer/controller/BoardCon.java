package com.smhrd.textminer.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.mariadb.jdbc.plugin.authentication.standard.ed25519.math.ed25519.Ed25519LittleEndianEncoding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.textminer.dto.BoardDTO;
import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.myDTO;
import com.smhrd.textminer.mapper.BoardMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class BoardCon {

	@Autowired
	private BoardMapper boardMapper;

	@GetMapping("/board")
	public String BoardList(HttpServletRequest request) {

		String search = request.getParameter("search");
		String keyword = request.getParameter("keyword");
		
		// 페이지 관련 설정
		String pageParam = request.getParameter("page");
		int page = 1; // 초기값 1설정
		if (pageParam != null) {
			page = Integer.parseInt(pageParam);
		}
		int limit = 10;
		int offset = (page - 1) * limit;

		int totalCount;
		
		
		List<BoardDTO> boardList;
		if (search == null) {
			if(keyword == null) { // 전체 보여주기 
				totalCount = boardMapper.getBoardCount();
				boardList = boardMapper.selectBoardList(offset, limit);
			}else { // 키워드눌렀을때
				totalCount = boardMapper.getkeywordCount(keyword);
				boardList = boardMapper.getPostListByCategories(keyword, offset);
			}
			
		} else { //검색한버전
			totalCount = boardMapper.getsearchCount(search);
			boardList = boardMapper.search(search, offset);
		}

		int totalPage = (totalCount % limit == 0) ? totalCount / limit : totalCount / limit + 1;
		

		

		HttpSession session = request.getSession();

		session.setAttribute("list", boardList);

		session.setAttribute("cnt", totalCount); // 전체 데이터 갯수
		session.setAttribute("currentPage", page); // 현재페이지
		session.setAttribute("totalPage", totalPage); // 전체 페이지 갯수
		session.setAttribute("limit", limit); // 10
		session.setAttribute("offset", offset); // 페이지 수

		
		JoinDTO jo = (JoinDTO)session.getAttribute("dto");
		String k1;
		String k2;
		String k3;
		
		if(jo == null) {
			k1 = "AI";
			k2 = "로봇";
			k3 = "제조업";
			
		}else {
			
			k1 = jo.getMb_key1();
			k2 = jo.getMb_key2();
			k3 = jo.getMb_key3();
		}
		
		
		
		
		
		// 키워드 리스트 생성
		List<String> keyList = new ArrayList<>(Arrays.asList(k1, k2, k3, "빅데이터", "클라우드"));
		
		//"제조업0", "에너지0", "패션", "농수산","시스템반도체", "유통/물류", "로봇", "통신/보안", "광고/마케팅", "스마트헬스케어", "교육", "예술/콘텐츠", "모빌리티", "뷰티","핀테크", "게임", "헬스케어", "바이오"
		
		List<String> Keys = keyList.subList(0, 5);
		System.out.println(Keys);
		session.setAttribute("Keys", Keys);

		return "board";

	}

}
