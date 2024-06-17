package com.min.edu.service;

import java.util.List;

import com.min.edu.dto.BoardDto;
import com.min.edu.dto.FileDto;

public interface IBoardService {
	
	// TODO 02_04 IBoardService 인터페이스 
	
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
		// 첨부파일 등록
		public int insertFile(FileDto fDto);
		// 게시글 + 첨부파일 트랜젝션
		public int insertTransaction(BoardDto bDto, FileDto fDto);
		// 첨부파일 불러오기
		public FileDto getFile(String b_seq);		

}
