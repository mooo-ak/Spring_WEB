package com.min.edu.mapper;

import java.util.Map;

import com.min.edu.dto.UserDto;

public interface IUserDao {
	
	// 회원가입
	public int signUp(UserDto userDto);
	// 로그인
	public UserDto getLogin(Map<String, Object> map);
}
