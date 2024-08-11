package com.virtusa.project.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.project.model.Movie;
import com.virtusa.project.service.MovieService;

@RestController
public class MovieController {

	@Autowired
	MovieService movieserv;
	
	
	@GetMapping("/adminhome")
	ModelAndView adminHome() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("AdminHome.jsp");
		return mView;
	}
	
	@GetMapping("/add")
	ModelAndView addPage() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("AddMovie.jsp");
		return mView;
	}
	
	
	@PostMapping("/addmovie")
	ModelAndView saveMovie(@RequestParam("movieName") String movieName, @RequestParam("language") String language, @RequestParam("thrName") String thrName, @RequestParam("state") String state, @RequestParam("city") String city, @RequestParam("showNo") Integer showNo, @RequestParam("startTime") String startTime, @RequestParam("showDate") String showDate, @RequestParam("poster") MultipartFile poster) {
		try {
			movieserv.saveMovie(movieName, language,thrName, state, city, showNo, startTime, showDate, poster);
		} catch (ParseException e) {
			System.out.println("ParseException");
			e.printStackTrace();
		}
		ModelAndView mView = new ModelAndView();
		mView.setViewName("redirect:/adminhome");
		return mView;
	}
	
	@GetMapping("/delete")
	ModelAndView delPage() {
		ModelAndView mView = new ModelAndView();
		mView.setViewName("DeleteMovie.jsp");
		return mView;
	}
	
	@PostMapping("/deletemovie")
	ModelAndView delMovie(@RequestParam("movieId") Integer movieId) {
		movieserv.delMovie(movieId);
		ModelAndView mView = new ModelAndView();
		mView.setViewName("redirect:/adminhome");
		return mView;
	}
	
	@GetMapping("/AllMovies")
	ModelAndView allMovies() {
		List<Movie> movies = movieserv.allMovies();
		ModelAndView mView = new ModelAndView();
		mView.addObject("movies",movies);
		mView.setViewName("AllMovies.jsp");
		return mView;
	}
	
	
//	@GetMapping("/Movies")
//	ModelAndView movies() {
//		List<Movie> movies = movieserv.allMovies();
//		ModelAndView mView = new ModelAndView();
//		mView.addObject("movie",movies);
//		mView.setViewName("UserMovies.jsp");
//		return mView;
//	}
	
	@GetMapping("/Movies2")
	ModelAndView movies2() {
		List<Movie> movies = movieserv.allMovies();
		ModelAndView mView = new ModelAndView();
		mView.addObject("movie",movies);
		mView.setViewName("UserMovies2.jsp");
		return mView;
	}
	
	
}
