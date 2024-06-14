package com.test.edu;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.min.edu.dto.CalendarDto;
import com.min.edu.dto.UserDto;
import com.min.edu.service.ICalendarService;
import com.min.edu.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class User_JUnitTest {
	
	@Autowired
	private IUserService uService;

	@Autowired
	private ICalendarService cSerive;
	
//	@Test
	public void loginTest() {
		// 로그인 테스트
		Map<String, Object> map = new HashMap<>();
		map.put("user_id", "HIHI");
		map.put("password", "HIHI");
		UserDto loginInfo = uService.getLogin(map);
		assertNotNull(loginInfo);
	}
	
//	@Test
	public void getAllCalendar() {
		// 일정 전체조회 테스트
		List<CalendarDto> lists = cSerive.getAllSchedule();
		assertNotNull(lists);
		
	}

}
