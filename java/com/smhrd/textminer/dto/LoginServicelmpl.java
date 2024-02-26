package com.smhrd.textminer.dto;

import org.springframework.stereotype.Service;

import com.smhrd.textminer.mapper.LoginMapper;

@Service
public class LoginServicelmpl implements LoginService {
	
	LoginMapper loginMapper;
	
	/* 로그인 */
	@Override
	public LoginDTO memberLogin(LoginDTO loginDTO) throws Exception {
		

		;
		return loginDTO;

		
	}

}
