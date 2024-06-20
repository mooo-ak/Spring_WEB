package com.min.edu.mapper;

import java.util.List;
import java.util.Map;

import com.min.edu.dto.BoardDto;

public interface IPageDao {

	// 게시판 조회
	public List<BoardDto> testBoardList();
	
	// 게시글 총 개수
	public int countBoard();
	
	// 페이지별 게시글 조회
	public List<BoardDto> selectPaging(Map<String, Object> map);
}
