package com.virtusa.project.service;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

@Component
public class validation {
	public boolean validateEmail(String email) {
		boolean status = false;
		String regex = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
		if(Pattern.matches(regex, email)) {
			status = true;
		}
		return status;
	}

	public boolean validatePass(String pwd) {
		boolean status = false;
		String regex = "^(?=.*[0-9])"+"(?=.*[a-z])(?=.*[A-Z])"+"(?=.*[@#$%^&+=])"+"(?=\\S+$).{8,20}$";
		if(Pattern.matches(regex, pwd)) {
			status = true;
		}
		return status;
	}
}
