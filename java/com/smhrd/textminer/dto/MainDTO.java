package com.smhrd.textminer.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class MainDTO {
	
	private int b_seq;
	private String b_keyword;
	private String b_title;
	private String b_or;
	private String b_sor;
	private String b_conts;
	private String b_region;
	private String b_url;
	private Date b_sdate;
	private Date b_edate;
	
	/*
	 * public void setB_sdate(String parameter) throws ParseException {
	 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * this.b_sdate = dateFormat.parse(parameter); }
	 * 
	 * public void setB_edate(String parameter) throws ParseException {
	 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * this.b_edate = dateFormat.parse(parameter); }
	 */
	
}
