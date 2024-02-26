package com.smhrd.textminer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.smhrd.textminer.dto.BoardDTO;

@Component
public interface MypageMapper {

	// 게시글 번호의 내림차순으로 게시판 검색 --> ORDER BY b_seq DESC
	@Select("SELECT * \r\n"
			+ "FROM board A, \r\n"
			+ "		(SELECT b_seq FROM scrap WHERE mb_id = #{mb_id}) B \r\n"
			+ "WHERE A.b_seq = B.b_seq \r\n"
			+ "ORDER BY A.b_edate LIMIT #{offset}, #{limit};")
	public List<BoardDTO> selectmyList(String mb_id, int offset, int limit);

	@Select("SELECT count(*) FROM scrap where mb_id = #{mb_id}")
	public int getmyCount(String mb_id);
	
	@Delete("DELETE FROM scrap WHERE b_seq = #{b_seq} AND mb_id = #{mb_id}")
	public void mydel(int b_seq, String mb_id);
	

}


