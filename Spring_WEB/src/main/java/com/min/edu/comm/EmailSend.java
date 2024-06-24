package com.min.edu.comm;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.min.edu.dto.EmailDto;

@Service
public class EmailSend {

	private final JavaMailSender mailSender;
	
	@Autowired
	public EmailSend(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendEmail(EmailDto emailDto) {
		MimeMessage message = mailSender.createMimeMessage();
		
        MimeMessageHelper helper;
        try {
            helper = new MimeMessageHelper(message, true); // true indicates multipart message
            helper.setTo("mooo.ak910@gmail.com"); // 받는 사람 이메일 주소
            helper.setSubject(emailDto.getTitle()); // 이메일 제목
            helper.setText("From: " + emailDto.getName() + "\nEmail: " + emailDto.getEmailaddress()
                    + "\n\nMessage:\n" + emailDto.getContent()); // 이메일 내용

            mailSender.send(message);
        } catch (MessagingException e) {
            e.printStackTrace(); 
        }
	}
	
	
}
