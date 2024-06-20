package com.min.edu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.comm.Pagenation;
import com.min.edu.dto.BoardDto;
import com.min.edu.mapper.IPageDao;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class PageServiceImpl implements IPageService {

	@Autowired
	private IPageDao pageDao;
	
	@Override
	public List<BoardDto> testBoardList() {
		log.info("PageServiceImpl testBoardList 테스트 게시글 전체조회");
		return pageDao.testBoardList();
	}	
	
	@Override
	public int countBoard() {
		log.info("PageServiceImpl countBoard 게시글 총 갯수");
		return pageDao.countBoard();
	}

	@Override
	public List<BoardDto> selectPaging(int currentPage) {
		log.info("PageServiceImpl selectPaging 페이지 별 게시글 조회");		
		
		int pagePerPost = 10; // 페이지당 보일 게시글 갯수
//		int startPost = ((currentPage-1) * pagePerPost) + 1; // 게시글 시작 
//		int endPost = startPost + 9; // 게시글 끝
        int startPost = (currentPage - 1) * pagePerPost +1; // 시작 게시글 인덱스 (1부터 시작)
        int endPost = startPost + pagePerPost - 1; // 끝 게시글 인덱스
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", startPost);
		map.put("end", endPost);
			
		return pageDao.selectPaging(map);
	}
	
	public Pagenation paging(int currentPage) {
		log.info("PageServiceImpl paging 페이징DTO 설정");
		int displayPage = 10; // pagenation 갯수 (1~10 /11~20)
		int pagePerPost = 10; // 페이지당 보일 게시글 갯수
		
		int totalPost = pageDao.countBoard(); // 게시글의 전체 갯수 조회
		
		Pagenation pagenation = new Pagenation();
	    pagenation.setPagingInfo(currentPage, displayPage, totalPost, pagePerPost);
		
		return pagenation;
	}
	
	
}
