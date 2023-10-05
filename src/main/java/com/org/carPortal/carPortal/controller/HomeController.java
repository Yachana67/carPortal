package com.org.carPortal.carPortal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

//	@RequestMapping("/login")
//	public String loginPage()
//	{
//		return "login";
//	}
//	
	@RequestMapping("/logout-success")
	public String logoutPage()
	{
		return "logout";
	}
	
	@GetMapping("/homep")
	public String homees()
	{
		return "mainh";
	}
}
