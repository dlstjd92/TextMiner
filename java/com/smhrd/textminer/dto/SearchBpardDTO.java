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
public class SearchBpardDTO {
	
	private int page;
	private  int recordSize;
	private int pageSize;
	private String keyword;
	private String searchType;
	
	
	public void SearchDTO() {
		this.page= 1;
		this.recordSize=10;
		this.pageSize = 10;
	}
	
	public int getOffset() {
		return(page-1) * recordSize;
	}
}
