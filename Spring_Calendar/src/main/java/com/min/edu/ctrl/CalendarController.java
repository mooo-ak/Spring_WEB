package com.min.edu.ctrl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.min.edu.dto.CalendarDto;
import com.min.edu.service.ICalendarService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class CalendarController {
	
	@Autowired
	private ICalendarService cSerive;
	
	@GetMapping (value = "/getCalendar.do")
	public String getCalendar() {
		log.info("캘린더 화면으로 이동");
		return "/calendar/calendar";
	}
	
	 @GetMapping("/getAllSchedule.do")
	    public ResponseEntity<List<Map<String, Object>>> getAllSchedule() {
		 	log.info("전체 조회된 일정 DATA → JSON 데이터로 변환_version02");
	        // 1-1) 서비스에서 모든 일정 데이터를 조회하여 List<CalendarDto> 형식으로 반환 
	        List<CalendarDto> schedules = cSerive.getAllSchedule();
	        // 1-2) JSON 데이터를 담기 위한 리스트 생성
	        List<Map<String, Object>> events = new ArrayList<>();

	        for (CalendarDto schedule : schedules) {
	        	// 2-1) 각 일정 데이터를 JSON 형식의 Map으로 변환
	            Map<String, Object> event = new HashMap<>();
	            // 2-2) 일정 데이터의 각 필드를 Map에 추가
	            event.put("id", schedule.getCal_no());
	            event.put("title", schedule.getCal_title());
	            event.put("start", schedule.getCal_start());
	            event.put("end", schedule.getCal_end());
	            event.put("description", schedule.getCal_content());
	            // 2-3) 변환된 일정 데이터를 담은 Map을 events 리스트에 추가
	            events.add(event);
	        }
	        // 변환된 JSON 데이터를 HTTP 응답으로 반환 (상태 코드는 200 OK)
	        return new ResponseEntity<>(events, HttpStatus.OK);
	    }
	
	 /* ------------------------------------------------------------------------
	  * 시행착오 01
	 @GetMapping("/getAllSchedule.do")
	    public ResponseEntity<List<Map<String, Object>>> getAllSchedule() {
	        log.info("전체 조회된 일정 DATA → JSON 데이터로 변환_version01");
	        List<CalendarDto> schedules = cSerive.getAllSchedule();
	        List<Map<String, Object>> events = new ArrayList<>();

	        for (CalendarDto schedule : schedules) {
	            Map<String, Object> event = new HashMap<>();
	            event.put("cal_no", schedule.getCal_no());
	            event.put("cal_category", schedule.getCal_category());
	            event.put("cal_title", schedule.getCal_title());
	            event.put("cal_content", schedule.getCal_content());
	            event.put("cal_writer", schedule.getCal_writer());
	            event.put("cal_start", schedule.getCal_start());
	            event.put("cal_end", schedule.getCal_end());
	            event.put("cal_regdate", schedule.getCal_regdate());
	            event.put("cal_modify", schedule.getCal_modify());
	            event.put("cal_delflag", schedule.getCal_delflag());
	            event.put("cal_bigo", schedule.getCal_bigo());
	            events.add(event);
	        }
	        return new ResponseEntity<>(events, HttpStatus.OK);
	    } ------------------------------------------------------------------------
		*/
	
	
	
	
	
	
	
} // Calendar Controller END