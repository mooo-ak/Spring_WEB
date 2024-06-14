package com.min.edu.mapper;

import java.util.List;

import com.min.edu.dto.CalendarDto;

public interface ICalendarDao {
	
	public List<CalendarDto> getAllSchedule(); 
	
	public int insertSchedule(CalendarDto cDto);
	
	public CalendarDto getDetailSchedule(String cal_no);

}
