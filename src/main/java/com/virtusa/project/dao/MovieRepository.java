package com.virtusa.project.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.virtusa.project.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Integer> {
	
}
