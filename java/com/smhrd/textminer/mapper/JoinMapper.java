package com.smhrd.textminer.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.smhrd.textminer.dto.JoinDTO;

@Mapper
@Component
public interface JoinMapper {

	@Insert("INSERT INTO member VALUES ('${mb_id}', '${mb_pw}', '${mb_name}', '${mb_email}', '${mb_firm}', '${mb_call}', '${mb_key1}', '${mb_key2}', '${mb_key3}', '${mb_region}', 0)")
	int InsertJoinData(JoinDTO joinDTO); // 회원가입 매퍼

}