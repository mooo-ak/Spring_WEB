package com.min.edu.ctrl;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.min.edu.dto.UserDto;
import com.min.edu.service.IUserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {
	
	@Autowired
	private IUserService uService;
	
	@GetMapping (value = "/loginForm.do")
	public String getLogin() {
		log.info("UserController loginForm.do : 로그인 화면으로 이동");
		return "/user/loginForm";
	}
	
	@PostMapping (value = "/login.do")
	public String login(@RequestParam Map<String, Object>map, HttpSession httpSession, HttpServletResponse response) throws IOException {
		log.info("UserController login.do : 로그인");
		UserDto loginInfo = uService.getLogin(map);
		response.setContentType("text/html; charset=UTF-8");
		if(loginInfo != null) {
			httpSession.setAttribute("loginInfo", loginInfo);
			response.getWriter().print("<script>alert('로그인이 되었습니다'); location.href='./'</script>");
			return null;
		} else {
			response.getWriter().print("<script>alert('로그인 정보가 없습니다'); location.href='./loginForm.do'</script>");
			return null;
		}
	}
	
	@GetMapping (value = "/logout.do")
	public String logout(HttpSession httpSession, HttpServletResponse response) throws IOException {
		log.info("UserController logout.do : 로그아웃");
		httpSession.invalidate();
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print("<script>alert('로그아웃 되었습니다'); location.href='./'</script>");
		return null;
	}
	
}
