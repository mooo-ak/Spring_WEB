package com.min.edu.dto;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class CalendarDto {

	private String cal_no;
	private String cal_category;
	private String cal_title;
	private String cal_content;
	private String username; // 로그인한 유저 이름
	private String cal_start;
	private String cal_end;
	private String cal_regdate;
	private String cal_modify;
	private String cal_delflag;
	private String cal_bigo;
	private String user_id; // 로그인한 유저 id
	
}
