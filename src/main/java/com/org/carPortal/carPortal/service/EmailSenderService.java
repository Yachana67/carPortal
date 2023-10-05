package com.org.carPortal.carPortal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderService {

	@Autowired
	private JavaMailSender mailSender;
	

	public void sendMail(String fromEmail,String toEmail,String subject,String body)
	{
		SimpleMailMessage mail=new SimpleMailMessage();
		mail.setFrom(fromEmail);
		mail.setTo(toEmail);
		mail.setSubject(subject);
		mail.setText(body);
		
		mailSender.send(mail);
		
		System.out.println("Email sent successfully!!!");
	}
}
