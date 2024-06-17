package com.min.edu.mapper;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.edu.dto.UserDto;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class UserDaoImpl implements IUserDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	private final String NS = "com.min.edu.mapper.UserDaoImpl.";

	@Override
	public int signUp(UserDto userDto) {
		log.info("UserDaoImpl singUp : 회원가입 DAO ACCESS");
		return session.insert(NS+"signUp", userDto);
	}

	@Override
	public UserDto getLogin(Map<String, Object> map) {
		log.info("UserDaoImpl login : 회원 로그인 DAO ACCESS");
		return session.selectOne(NS+"getLogin", map);
	}

}
