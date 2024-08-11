package com.virtusa.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.project.model.Customer;
import com.virtusa.project.service.CustomerService;

@RestController
public class CustomerController {
	@Autowired
	CustomerService custserv;
	
	@Autowired
	BookTicketController bkcntl;
	
	Customer cust;
	
	@GetMapping("/userloginfail")
	ModelAndView userfail() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("userloginfailure.jsp");
		return mView;
	}
	@GetMapping("/userloginsuccess")
	ModelAndView usersucc() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("userloginsuccess.jsp");
		return mView;
	}
	
	
	
	@GetMapping("/registration")
	ModelAndView custRegPage() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("Registration.jsp");
		return mView;
	}
	@GetMapping("/addUser")
	ModelAndView addUser(@ModelAttribute Customer customer) {
		ModelAndView mView = new ModelAndView();
		 Customer c = custserv.valid(customer.getUserEmail());
		 
		 if(c==null) {
			 boolean r = custserv.addUser(customer);
		     if(r) {
		    	 //bkcntl.setUid(customer);
		    	 mView.setViewName("/userloginsuccess");
		     }
		     else {
		    	 mView.setViewName("redirect:/userloginfail");
		     }
		 }
		 else {
			 mView.setViewName("UserExistsAlert.jsp");
		 }
		 return mView;
	     
	}
	
	
	
	@GetMapping("/login")
	ModelAndView custLoginPage() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("userLogin.jsp");
		return mView;
	}
	@PostMapping("/validate")
	ModelAndView validate(@RequestParam("userEmail") String uEmail, @RequestParam("userPass") String uPass) {
		Customer c = custserv.validate(uEmail, uPass);
		
		ModelAndView mView = new ModelAndView();
		if(c!=null) {
			cust = c;
			bkcntl.setUid(c);
			mView.setViewName("redirect:/Movies2");
		}
		else {
			mView.setViewName("redirect:/userloginfail");
		}
		return mView;
	}
	
	
//	Customer gettCustomer() {
//		return cust;
//	}
	
	
}
