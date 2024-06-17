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
public class JUnitTest {
	
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
	
//	@Test
	public void insertSchedule() {
		// 일정 등록 테스트
		CalendarDto cDto = new CalendarDto();
		cDto.setCal_category("공지사항");
		cDto.setCal_title("공지사항 제목");
		cDto.setCal_content("공지사항을 말씀드립니다");
		cDto.setCal_writer("하이");
		cDto.setCal_start("2024-06-14");
		cDto.setCal_end("2024-06-15");
		
		int result = cSerive.insertSchedule(cDto);
		assertEquals(1, result);
	}
	
//	@Test
	public void updateSchedule() {
		// 일정 수정 테스트
		CalendarDto cDto = new CalendarDto();
		cDto.setCal_no("2");
		cDto.setCal_category("개인일정");
		cDto.setCal_title("공지사항 제목");
		cDto.setCal_content("공지사항을 말씀드립니다");
		cDto.setCal_writer("하이");
		cDto.setCal_start("2024-06-14");
		cDto.setCal_end("2024-06-15");
		
		int result = cSerive.updateSchedule(cDto);
		assertEquals(1, result);
	}
	
//	@Test
	public void delSchedule() {
		// 일정 삭제 테스트
		int result = cSerive.delSchedule("1");
		assertEquals(1, result);
	}

}
