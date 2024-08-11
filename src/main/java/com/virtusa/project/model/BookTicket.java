package com.virtusa.project.model;

import java.util.Optional;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookTicket {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int sno;
	
	String seatId;
	int bookId;
	
	@ManyToOne
	Movie movie;
	
	@ManyToOne//(cascade = CascadeType.ALL)
	Customer customer;

	public void setMovie(Movie m) {
		// TODO Auto-generated method stub
		
	}
	
	
}
