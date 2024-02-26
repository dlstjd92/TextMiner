package com.smhrd.textminer.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import com.smhrd.textminer.dto.JoinDTO;


@Mapper
@Component
public interface UserMapper {
	
	@Update("UPDATE member SET mb_name=#{mb_name}, mb_pw=#{mb_pw}, mb_call=${mb_call}, mb_email=#{mb_email}, mb_firm=#{mb_firm} WHERE mb_id=#{mb_id}")
	public int updateUserData(JoinDTO dto);
	
	@Delete("DELETE FROM member WHERE mb_id=#{mb_id}")
	public int deleteUserData(String mb_id);


}
