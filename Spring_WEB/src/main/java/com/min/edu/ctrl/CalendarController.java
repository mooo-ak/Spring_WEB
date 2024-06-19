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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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
	    public ResponseEntity<List<Map<String, Object>>> getAllSchedule(String user_id) {
		 	log.info("전체 조회된 일정 DATA → JSON 데이터로 변환_version02");
	        // 1-1) 서비스에서 모든 일정 데이터를 조회하여 List<CalendarDto> 형식으로 반환 
	        List<CalendarDto> schedules = cSerive.getAllSchedule(user_id);
	        // 1-2) JSON 데이터를 담기 위한 리스트 생성
	        List<Map<String, Object>> events = new ArrayList<>();

	        for (CalendarDto schedule : schedules) {
	        	// 2-1) 각 일정 데이터를 JSON 형식의 Map으로 변환
	            Map<String, Object> event = new HashMap<>();
	            // 2-2) 일정 데이터의 각 필드를 Map에 추가
	            event.put("category", schedule.getCal_category());
	            event.put("id", schedule.getCal_no());
	            event.put("title", schedule.getCal_title());
	            event.put("username", schedule.getUsername());
	            event.put("description", schedule.getCal_content());
	            event.put("start", schedule.getCal_start());
	            event.put("end", schedule.getCal_end());
	            // 2-3) 변환된 일정 데이터를 담은 Map을 events 리스트에 추가
	            events.add(event);
	        }
	        // 변환된 JSON 데이터를 HTTP 응답으로 반환 (상태 코드는 200 OK)
	        return new ResponseEntity<>(events, HttpStatus.OK);
	    }
	
	 
	 @PostMapping (value = "/insertSchedule.do")
	 @ResponseBody
	 public String insertSchedule(@RequestBody CalendarDto cDto) {
		 log.info("CalendarController insertSchedule : 서버로 일정 등록 데이터 전달");
		 int result = cSerive.insertSchedule(cDto);
		 return (result>0)? "/getCalendar.do" : "";
	 }
	 
	 @GetMapping(value = "/getDetailSchedule.do")
	 @ResponseBody 
	 public CalendarDto getDetailSchedule(CalendarDto cDto) {
	     log.info("CalendarController detailSchedule : 일정 상세조회");
	     cDto.getCal_no();
	     cDto.getUser_id();
	     CalendarDto scheduleInfo = cSerive.getDetailSchedule(cDto);
	     return scheduleInfo;
	 }
	 
	 @PutMapping(value = "/updateSchedule.do")
	 @ResponseBody
	 public String updateSchedule(@RequestBody CalendarDto cDto) {
	     log.info("CalendarController updateSchedule : 일정 업데이트");
	     int update = cSerive.updateSchedule(cDto);
	     return (update > 0)? "/getCalendar.do" : "" ;
	 }

	 
	 @PutMapping(value = "/delSchedule.do")
	 public ResponseEntity<?> delSchedule(@RequestBody Map<String, String> map) {
	     log.info("CalendarController delSchedule : 일정삭제");
		 String cal_no = map.get("cal_no");
	     int del = cSerive.delSchedule(cal_no);
	     return (del > 0) ? ResponseEntity.ok("삭제 성공!") : ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error deleting event");
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
