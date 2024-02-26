package com.smhrd.textminer.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
//@RequiredArgsConstructor
@NoArgsConstructor
@Getter
public class LoginDTO {
	
	@NonNull
	private String mb_id;
	@NonNull
	private String mb_pw;
	
	
}
