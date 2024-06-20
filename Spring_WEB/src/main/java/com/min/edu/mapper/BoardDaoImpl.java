package com.min.edu.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.BoardDto;
import com.min.edu.dto.FileDto;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class BoardDaoImpl implements IBoardDao {

		@Autowired
		private SqlSessionTemplate session;
		
		private final String NS = "com.min.edu.mapper.BoardDaoImpl.";
		
		
		@Override
		public List<BoardDto> boardList() {
			log.info("BoardDaoImpl boardList : 게시글 전체조회 Dao Access");
			return session.selectList(NS+"boardList");
			
		}

		@Override
		public BoardDto detailBoard(String b_seq) {
			log.info("BoardDaoImpl detailBoard : 게시글 상세조회 Dao Access");
			return session.selectOne(NS+"detailBoard", b_seq);
		}

		@Override
		public int writeBoard(BoardDto bDto) {
			log.info("BoardDaoImpl writeBoard : 게시글 작성 Dao Access");
			return session.insert(NS+"writeBoard", bDto);
		}

		@Override
		public int modifyBoard(BoardDto bDto) {
			log.info("BoardDaoImpl modifyBoard : 게시글 수정 Dao Access");
			return session.update(NS+"modifyBoard", bDto);
		}

		@Override
		public int delBoard(String b_seq) {
			log.info("BoardDaoImpl delBoard : 게시글 삭제 Dao Access");
			return session.update(NS+"delBoard", b_seq);
		}
		
		@Override
		public int insertFile(FileDto fDto) {
		log.info("BoardDaoImpl insertFile Dao : 첨부파일 등록 Access");
		return session.insert(NS+"insertFile", fDto);
		}

		@Override
		public FileDto getFile(String b_seq) {
		log.info("BoardDaoImpl getFile : 첨부파일 다운로드 Dao Access");
		return session.selectOne(NS+"getFile", b_seq);
		}
		
		@Override
		public int updateView(String b_seq) {
		log.info("BoardDaoImpl updateView : 조회수 증가 Dao Access");
		return session.update(NS+"updateView", b_seq);
		}

}
