package com.virtusa.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Customer {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	int userId;
	@Column
	String userName;
	@Column
	String userEmail;
	@Column
	String userPass;
	
}
