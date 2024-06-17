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
public class UserDto {

	private String user_id;
	private String password;
	private String username;
	private String nickname;
	private String useremail;
	private String userphone;
	private String signup_date;
	private String auth;
	private String dropout;
}
