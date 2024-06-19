package com.min.edu.service;

import java.util.List;

import com.min.edu.dto.CalendarDto;

public interface ICalendarService {

	public List<CalendarDto> getAllSchedule(String user_id); 
	
	public int insertSchedule(CalendarDto cDto);
	
	public CalendarDto getDetailSchedule(CalendarDto cDto);
	
	public int updateSchedule(CalendarDto cDto);
	
	public int delSchedule(String cal_no);
	
}
