package com.min.edu.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.min.edu.comm.EmailSend;
import com.min.edu.dto.EmailDto;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MailController {

	
	private final EmailSend emailSend;
	
	@Autowired
	public MailController(EmailSend emailSend) {
		this.emailSend = emailSend;
	}
	
	@PostMapping (value = "/sendEmail.do")
	public String sendEmail(Model model, EmailDto emailDto) {
		log.info("메일 전송 정보 확인: {}", emailDto);
		emailSend.sendEmail(emailDto);
		return "/home";
	}
	
}
