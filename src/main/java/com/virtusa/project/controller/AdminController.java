package com.virtusa.project.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.project.model.Admin;

@RestController
public class AdminController {

	
	@GetMapping("/adminlogin")
	ModelAndView loginPage() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("AdminLogin.jsp");
		return mView;
	}
	
	@GetMapping("/adminvalidate")
	ModelAndView validate(@ModelAttribute Admin admin) {
		
		ModelAndView mView = new ModelAndView();
		
		String uName = admin.getUsername();
		String pwd = admin.getPassword();
		
		if((uName.equals("admin")) && (pwd.equals("admin"))) {
			mView.setViewName("AdminHome.jsp");
		}
		else {
		    mView.setViewName("adminloginfailure.jsp");
		}
		
		return mView;
	}
	
	
	
	
}
