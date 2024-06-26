package com.min.edu.mapper;

import java.util.List;
import java.util.Map;

import com.min.edu.dto.BoardDto;
import com.min.edu.dto.FileDto;

public interface IBoardDao {
	
	/* 게시판 CRUD */
	// 게시글 전체조회
	public List<BoardDto> boardList();
	// 게시글 상세조회
	public BoardDto detailBoard(String b_seq);
	// 게시글 작성
	public int writeBoard(BoardDto bDto);
	// 게시글 수정
	public int modifyBoard(BoardDto bDto);
	// 게시글 삭제
	public int delBoard(String b_seq);
	
	/* 첨부파일 */
	// 첨부파일 등록
	public int insertFile(FileDto fDto);
	// 첨부파일 불러오기
	public FileDto getFile(String b_seq);
	
	// 조회수 증가
	public int updateView(String b_seq);
}
