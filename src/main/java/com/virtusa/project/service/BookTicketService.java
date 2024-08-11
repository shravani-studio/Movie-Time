package com.virtusa.project.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.project.dao.BookTicketRepository;
import com.virtusa.project.model.BookTicket;
import com.virtusa.project.model.Customer;
import com.virtusa.project.model.Movie;

@Service
public class BookTicketService {
	
	@Autowired
	BookTicketRepository bkrepo;
	
	int cid;
	int mid;

	public void seatsBooking(List<String> seats, Customer c, Movie m) {
		
		String uniqueID = UUID.randomUUID().toString();
		int bid=uniqueID.hashCode();
		 
		for(String seat:seats) {
			System.out.println(bid+" "+seat+" "+cid+" "+mid);
			bkrepo.saveSeat(bid, seat, cid, mid);
		}
		
		
	}
	
	public void values(Customer c, Movie m) {
		System.out.println("service"+c+" "+m);
		cid = c.getUserId();
		mid = m.getMovieId();

	}

	public List<BookTicket> getAllTickets(int userId) {
		return bkrepo.findAllByUserId(userId);
	}

	public void cancel(Integer bkid) {
		System.out.println(bkid);
		bkrepo.deleteByBookingId(bkid);
		
	}

}
