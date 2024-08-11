package com.virtusa.project.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.project.dao.MovieRepository;
import com.virtusa.project.model.BookTicket;
import com.virtusa.project.model.Customer;
import com.virtusa.project.model.Movie;
import com.virtusa.project.service.BookTicketService;

@RestController
public class BookTicketController {
	
	@Autowired
	BookTicketService bookserv;
	
	@Autowired 
	MovieRepository mvrepo;
	
	Customer c;
	Movie m;
	List<String> seatList;
	
	
	
//	@PostMapping("/book")
//	ModelAndView booking(@RequestParam int movieId) {
//		mId=movieId;
//		ModelAndView mView = new ModelAndView();
//		mView.setViewName("seats.jsp");
//		return mView;
//	}
	
	@GetMapping("/{movieId}")
	ModelAndView booking2(@PathVariable int movieId) {
		m=mvrepo.findById(movieId).orElse(null);
		ModelAndView mView = new ModelAndView();
		mView.setViewName("seats.jsp");
		return mView;
	}
	
	
	@PostMapping("/seats")
	ModelAndView seatsBooking(@RequestParam("seat") List<String> seats) {
		seatList = seats;
		System.out.println(c+" "+m);
		bookserv.values(c,m);
		bookserv.seatsBooking(seats, c, m);
        ModelAndView mView = new ModelAndView();
        mView.setViewName("redirect:/Movies2");
        return mView;
	}

	public void setUid(Customer c2) {
		c = c2;
		
	}
	
	@GetMapping("/mytickets")
	ModelAndView tickets() {
		int cid = c.getUserId();
		System.out.println("this is cid in my tickets"+cid);
		List<BookTicket> ticketList =  bookserv.getAllTickets(cid);
		ModelAndView mView = new ModelAndView();
		mView.addObject("ticketList",ticketList);
		mView.setViewName("myTickets.jsp");
		return mView;
	}
	
	@PostMapping("/cancel")
	ModelAndView cancel(@RequestParam("bkid") Integer  bkid) {
		System.out.println(bkid);
		bookserv.cancel(bkid);
		ModelAndView mView = new ModelAndView();
		mView.setViewName("redirect:/mytickets");
		return mView;
	}
	
}
