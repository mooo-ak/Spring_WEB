package com.min.edu.service;

import java.util.List;

import com.min.edu.dto.CalendarDto;

public interface ICalendarService {

	public List<CalendarDto> getAllSchedule(); 
	
	public int insertSchedule(CalendarDto cDto);
	
	public CalendarDto getDetailSchedule(String cal_no);
	
	public int updateSchedule(CalendarDto cDto);
	
	public int delSchedule(String cal_no);
	
}
