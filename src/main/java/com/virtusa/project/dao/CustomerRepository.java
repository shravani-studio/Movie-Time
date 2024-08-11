package com.virtusa.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.virtusa.project.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	
	
	public static final String email_psw = "select * from customer where user_email=?1 and user_pass=?2";
	@Query(value=email_psw,nativeQuery = true)
	public Customer findByEmailAndPassword(String uEmail,String uPass);
	

	public Customer findByUserEmail(String userEmail);
}
