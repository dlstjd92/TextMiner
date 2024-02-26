package com.smhrd.textminer.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.LoginDTO;


@Component
public interface LoginMapper {
	

	@Select("SELECT * FROM member WHERE mb_id = #{mb_id} and mb_pw = #{mb_pw}")
	JoinDTO selectMember(LoginDTO loginDTO);
	
	
}
