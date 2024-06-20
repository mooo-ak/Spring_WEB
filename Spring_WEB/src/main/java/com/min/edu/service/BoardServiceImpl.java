package com.min.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.dto.BoardDto;
import com.min.edu.dto.FileDto;
import com.min.edu.mapper.IBoardDao;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements IBoardService {
		
	@Autowired
	private IBoardDao bDao;

	@Override
	public List<BoardDto> boardList() {
		log.info("BoardServiceImpl boardList 게시글 전체조회");
		return bDao.boardList();
	}

	@Override
	public BoardDto detailBoard(String b_seq) {
		log.info("BoardServiceImpl detailBoard 게시글 상세조회 : {}번 게시글", b_seq);
		return bDao.detailBoard(b_seq);
	}

	@Override
	public int writeBoard(BoardDto bDto) {
		log.info("BoardServiceImpl writeBoard 게시글 새로 작성 : {} ", bDto);
		return bDao.writeBoard(bDto);
	}

	@Override
	public int modifyBoard(BoardDto bDto) {
		log.info("BoardServiceImpl modifyBoard 게시글 수정 : {}", bDto);
		return bDao.modifyBoard(bDto);
	}

	@Override
	public int delBoard(String b_seq) {
		log.info("BoardServiceImpl delBoard 게시글 삭제 : {}번 게시글", b_seq);
		return bDao.delBoard(b_seq);
	}
	
	@Override
	public int insertFile(FileDto fDto) {
		log.info("BoardServiceImpl insertFile 첨부파일 등록 : {}", fDto);
		return bDao.insertFile(fDto);
	}
	
	@Override
	public int insertTransaction(BoardDto bDto, FileDto fDto) {
		log.info("BoardServiceImpl insertTransaction 게시글 + 첨부파일");
		
		int nb = bDao.writeBoard(bDto);
		int nf = bDao.insertFile(fDto);
		
		if(nb + nf != 2) {
			log.error("게시글 등록 실패");
		}
		return 1;
	}
	
	@Override
	public FileDto getFile(String b_seq) {
		log.info("BoardServiceImpl getFile 첨부파일 가져오기");
		return bDao.getFile(b_seq);
	}
	
	@Override
	public int updateView(String b_seq) {
		log.info("BoardServiceImpl updateView 조회수 구현");
		return bDao.updateView(b_seq);
	}

}
