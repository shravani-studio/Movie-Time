package com.virtusa.project.model;

import javax.persistence.CascadeType;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Booking {
	@EmbeddedId
	TicketId ticketId;
	
	@ManyToOne(cascade = CascadeType.ALL)
	Movie movie;
	
	@ManyToOne(cascade = CascadeType.ALL)
	Customer customer;

	
}
