package com.virtusa.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;




@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Movie {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int movieId;
	String movieName;
	String language;
	String thrName;
	String state;
	String city;
	int showNo;
	java.sql.Time startTime;
	java.sql.Date showDate;
	
	@Lob
	byte[] poster;
	
}
