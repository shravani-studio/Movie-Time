package com.virtusa.project.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.virtusa.project.dao.MovieRepository;
import com.virtusa.project.model.Movie;

@Service
public class MovieService {

	@Autowired
	MovieRepository movierepo;

	public void saveMovie(String movieName, String language, String thrName, String state, String city, Integer showNo,
			String startTime, String showDate2, MultipartFile poster) throws ParseException {
		SimpleDateFormat s1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat s2 = new SimpleDateFormat("HH:mm");
		java.util.Date date1=s1.parse(showDate2);
		java.util.Date date2=s2.parse(startTime);
		java.sql.Date showdate =new java.sql.Date(date1.getTime());
		java.sql.Time showtime =new java.sql.Time(date2.getTime());
		
		Movie movie = new Movie();
		movie.setMovieName(movieName);
		movie.setLanguage(language);
		movie.setThrName(thrName);
		movie.setState(state);
		movie.setCity(city);
		movie.setShowNo(showNo);
		movie.setStartTime(showtime);
		movie.setShowDate(showdate);
		try {
			byte[] posterBytes = poster.getBytes();
			movie.setPoster(posterBytes);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	    movierepo.save(movie);
	}

	public void delMovie(int movieId) {
		movierepo.deleteById(movieId);
	}

	public List<Movie> allMovies() {
		return movierepo.findAll();
		
	}
	
	

}
