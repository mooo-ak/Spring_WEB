package com.min.edu.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.CalendarDto;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class CalendarDaoImpl implements ICalendarDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	private final String NS = "com.min.edu.mapper.CalendarDaoImpl.";

	@Override
	public List<CalendarDto> getAllSchedule() {
		log.info("CalendarDaoImpl getAllCalendar : 일정 전체조회 DAO ACCESS");
		return session.selectList(NS+"getAllSchedule");
	}

}
