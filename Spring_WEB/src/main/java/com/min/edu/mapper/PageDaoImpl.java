package com.min.edu.mapper;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.BoardDto;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class PageDaoImpl implements IPageDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	private final String NS = "com.min.edu.mapper.PageDaoImpl.";

	@Override
	public List<BoardDto> testBoardList() {
		log.info("TestDaoImpl testBoardList Dao Access");
		return session.selectList(NS+"testBoardList");
	}
	
	@Override
	public int countBoard() {
		log.info("TestDaoImpl countBoard Dao Access");
		return session.selectOne(NS+"countBoard");
	}
	
	@Override
	public List<BoardDto> selectPaging(Map<String, Object> map) {
		log.info("PageDaoImpl selectPaging Dao Acess");
		return session.selectList(NS+"selectPaging", map);
	}

}
