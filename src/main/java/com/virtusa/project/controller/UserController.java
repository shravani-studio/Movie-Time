package com.virtusa.project.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class UserController {
	@GetMapping("/user")
	ModelAndView user() {
		ModelAndView mview = new ModelAndView();
		mview.setViewName("user.jsp");
		return mview;
	}
}
