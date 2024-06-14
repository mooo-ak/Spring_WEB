package com.min.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.dto.CalendarDto;
import com.min.edu.mapper.ICalendarDao;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CalendarServiceImpl implements ICalendarService {
	
	@Autowired
	private ICalendarDao cDao;

	@Override
	public List<CalendarDto> getAllSchedule() {
		log.info("CalendarServiceImpl getAllCalendar : 일정 전체조회");
		return cDao.getAllSchedule();
	}
	
	@Override
	public int insertSchedule(CalendarDto cDto) {
		log.info("CalendarServiceImpl insertSchedule : 일정 등록 {}", cDto);
		return cDao.insertSchedule(cDto);
	}

}
