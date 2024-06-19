package com.min.edu.mapper;

import java.util.List;
import java.util.Map;

import com.min.edu.dto.CalendarDto;

public interface ICalendarDao {
	
	public List<CalendarDto> getAllSchedule(String user_id); 
	
	public CalendarDto getDetailSchedule(CalendarDto cDto);

	public int insertSchedule(CalendarDto cDto);
	
	public int updateSchedule(CalendarDto cDto);
	
	public int delSchedule(String cal_no);

}
