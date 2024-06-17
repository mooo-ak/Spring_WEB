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
	
	@Override
	public int insertSchedule(CalendarDto cDto) {
		log.info("CalendarDaoImpl insertSchedule : 일정 등록 DAO ACCESS");
		return session.insert(NS+"insertSchedule", cDto);
	}
	
	@Override
	public CalendarDto getDetailSchedule(String cal_no) {
		log.info("CalendarDaoImpl insertSchedule : 일정 상세조회 DAO ACCESS");
		return session.selectOne(NS+"getDetailSchedule", cal_no);
	}
	
	@Override
	public int updateSchedule(CalendarDto cDto) {
		log.info("CalendarDaoImpl updateSchedule : 일정 수정 DAO ACCESS");
		return session.update(NS+"updateSchedule", cDto);
	}

	@Override
	public int delSchedule(String cal_no) {
		log.info("CalendarDaoImpl delSchedule : 일정 삭제 DAO ACCESS");
		return session.update(NS+"delSchedule", cal_no);
	}
}
