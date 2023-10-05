package com.org.carPortal.carPortal;


import org.apache.catalina.core.ApplicationContext;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.org.carPortal.carPortal.service.EmailSenderService;

import net.bytebuddy.dynamic.loading.ClassLoadingStrategy.Configurable;

@SpringBootApplication
public class CarPortalApplication {

	public static void main(String[] args) {
	ConfigurableApplicationContext applicationContext=	SpringApplication.run(CarPortalApplication.class, args);
		
//		EmailSenderService emailSenderService=applicationContext.getBean(EmailSenderService.class);
//		emailSenderService.sendMail("yachana1412@gmail.com", "", "Checking if my mail is working", "created a springbootapplication for sending email");
	}

}
