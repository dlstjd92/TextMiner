package com.smhrd.textminer.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.LoginDTO;
import com.smhrd.textminer.mapper.LoginMapper;
import com.smhrd.textminer.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;
import lombok.Setter;

@Controller
@Getter
@Setter
public class UserManagerCon {
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	LoginMapper loginmapper;
	
	
	@RequestMapping("/userCon")
	public ModelAndView servletRequest(HttpServletRequest request) throws IOException {

	    // submit 타입으로 두개의 버튼을 컨트롤 하기 위해서 name 값이 같은 것을 주고 다른 value 설정
	    String submitType = request.getParameter("submitType");
	    // 확인용 코드
	    System.out.println(submitType);

	    ModelAndView mav = new ModelAndView();
	    
	    // 정보수정기능
	    if(submitType.equals("정보수정")) {
	    	
	        HttpSession session = request.getSession();
	        JoinDTO loginUser = (JoinDTO)session.getAttribute("dto");
	        System.out.println("수행할 코드 입력");
	        String mb_id = loginUser.getMb_id();
	        String mb_pw = request.getParameter("pwNb").toString();
	        String mb_name = loginUser.getMb_name();
	        String mb_email = request.getParameter("emailNb").toString();
	        String mb_firm = request.getParameter("FirmNb").toString();
	        String mb_call = request.getParameter("phoneNb").toString();
	        String mb_key1 = loginUser.getMb_key1();
	        String mb_key2 = loginUser.getMb_key2();
	        String mb_key3 = loginUser.getMb_key3(); 
	        String mb_region = loginUser.getMb_region();

	        JoinDTO dto = new JoinDTO(mb_id, mb_pw, mb_name, mb_email, mb_firm, mb_call, mb_key1, mb_key2, mb_key3, mb_region);

	        int cnt = userMapper.updateUserData(dto);

	        if(cnt > 0) {
	            System.out.println("회원정보수정 성공");
	            
	            //세션 다시불러오기
	            session = request.getSession();
	            
	            LoginDTO loginDTO = new LoginDTO(mb_id, mb_pw);
	            
	            
		        loginUser = loginmapper.selectMember(loginDTO);
		        session.setAttribute("dto", loginUser);
		        mav.setViewName("memberChange");
	            return mav;
	        } else {
	            System.out.println("회원정보수정 실패");
	            mav.setViewName("mypage");
	            return mav;
	        }
	        
	        
	        // 회원탈퇴기능
	    } else if (submitType.equals("회원탈퇴")) {
	        System.out.println("수행할 코드 입력");
	        
	        
	        HttpSession session = request.getSession();
	        JoinDTO loginUser = (JoinDTO) session.getAttribute("dto");
	        String mb_id = loginUser.getMb_id();
	        
	        int cnt = userMapper.deleteUserData(mb_id);
	        
	        if(cnt > 0) {
	            System.out.println("삭제 성공");
	            session.removeAttribute("loginUser");
	            mav.setViewName("memberDelete");
	            return mav;
	        } else {
	            System.out.println("삭제 실패");
	            mav.setViewName("mypage_member");
	            return mav;
	        }
	    } else {
	        System.out.println("버튼이 올바르게 입력되지 않았습니다.");
	    }

	    return mav;
	}
}
