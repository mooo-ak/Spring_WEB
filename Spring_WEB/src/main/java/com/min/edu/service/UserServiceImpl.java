package com.min.edu.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.edu.dto.UserDto;
import com.min.edu.mapper.IUserDao;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private IUserDao userDao;

	@Override
	public int signUp(UserDto userDto) {
		log.info("UserServiceImpl signUp : 회원가입 정보 {}", userDto);
		return userDao.signUp(userDto);
	}

	@Override
	public UserDto getLogin(Map<String, Object> map) {
		log.info("UserServiceImpl login : 로그인 정보 {}", map);
		return userDao.getLogin(map);
	}

}
