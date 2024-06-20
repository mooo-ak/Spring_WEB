package com.min.edu.service;

import java.util.List;

import com.min.edu.comm.Pagenation;
import com.min.edu.dto.BoardDto;

public interface IPageService {
	
	// [ 테스트 ] 게시판 글 목록 전체조회
	public List<BoardDto> testBoardList();
		
	// [ 테스트 ] 게시글 총 개수
	public int countBoard();
		
	// [ 테스트 ] 페이지별 게시글 조회
	public List<BoardDto> selectPaging(int currentPage);
	
	// [ 테스트 ] 페이징 설정
	public Pagenation paging(int currentPage);

}
