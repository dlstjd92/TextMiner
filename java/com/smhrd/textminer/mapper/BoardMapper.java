package com.smhrd.textminer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;
import com.smhrd.textminer.dto.BoardDTO;
import com.smhrd.textminer.dto.JoinDTO;
import com.smhrd.textminer.dto.LoginDTO;

@Component
public interface BoardMapper {

	// https://dlgkstjq623.tistory.com/305 참고했음

	// 게시글 번호의 내림차순으로 게시판 검색 --> ORDER BY b_seq DESC
	@Select("SELECT * FROM board  ORDER BY b_seq DESC LIMIT #{offset},#{limit}")
	public List<BoardDTO> selectBoardList(int offset, int limit);

	@Select("SELECT count(*) FROM board")
	public int getBoardCount();

	// 키워드에 맞는 카테고리 불러오기
	@Select("SELECT * FROM board WHERE b_keyword Like #{category} LIMIT #{offset}, 10")
	public List<BoardDTO> getPostListByCategory(String category, int offset);
	
	@Select("SELECT * FROM board WHERE b_keyword Like '%${category}%' LIMIT #{offset}, 10")
	public List<BoardDTO> getPostListByCategories(String category, int offset);

//	@Select ("SELECT * FROM board WHERE b_title LIKE '%{}%'")
//	public List<BoardDTO> getKeywordBoard();
//	
	// 검색어가 들어간 제목 또는 내용을 조회하기
	@Select("SELECT * FROM board WHERE b_title LIKE '%파이썬%' OR b_content LIKE '%{}%'")
	public List<BoardDTO> getSeachConts();

	@Select("SELECT count(*) FROM board WHERE b_keyword LIKE '%${k_word}%'")
	public int getkeywordCount(String k_word);
	
	
	// 검색어가 제목 조회하기
	@Select("SELECT count(*) FROM board WHERE b_title LIKE '%${k_word}%'")
	public int getsearchCount(String k_word);

	@Select("SELECT * FROM board WHERE b_title LIKE '%${k_word}%' ORDER BY b_seq DESC LIMIT #{offset}, 10 ")
	public List<BoardDTO> search(String k_word, int offset);

}

//	 해당 게시글 번호에 맞는 게시글의 모든 요소를 검색
//	@Select("SELECT * FROM board WHERE b_sqe=#{b_sqe}")
//	public BoardDTO view(int b_sqe);
