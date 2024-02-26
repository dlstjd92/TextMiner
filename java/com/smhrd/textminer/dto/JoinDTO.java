package com.smhrd.textminer.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class JoinDTO {

	@NonNull
	private String mb_id;
	@NonNull
	private String mb_pw;
	@NonNull
	private String mb_name;
	@NonNull
	private String mb_email;
	@NonNull
	private String mb_firm;
	@NonNull
	private String mb_call;
	
	private String mb_key1;
	private String mb_key2;
	private String mb_key3;
	private String mb_region;
	
}
