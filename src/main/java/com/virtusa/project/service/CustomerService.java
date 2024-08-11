package com.virtusa.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.project.dao.CustomerRepository;
import com.virtusa.project.model.Customer;

@Service
public class CustomerService {
	
	@Autowired
	CustomerRepository custrepo;
	
	@Autowired
	validation valid;

	public boolean addUser(Customer customer) {
		boolean status;
		String email = customer.getUserEmail();
		String pwd = customer.getUserPass();
		
		boolean vEmail = valid.validateEmail(email);
		boolean vPwd = valid.validatePass(pwd);
		
		if(vEmail&vPwd) {
			custrepo.save(customer);
			status = true;
		}
		else {
			status = true;
		}
		
		return status;
	}

	public Customer validate(String uEmail, String uPass) {
	    return custrepo.findByEmailAndPassword(uEmail, uPass);
	}

	public Customer valid(String userEmail) {
		return custrepo.findByUserEmail(userEmail);
	}

}
