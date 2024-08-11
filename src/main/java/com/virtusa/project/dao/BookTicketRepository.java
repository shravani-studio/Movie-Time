package com.virtusa.project.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.virtusa.project.model.BookTicket;

@Repository
public interface BookTicketRepository extends JpaRepository<BookTicket, Integer> {
	@Modifying
	@Transactional
	@Query(value="insert into book_ticket (book_id, seat_id, customer_user_id, movie_movie_id) values (:book_id, :seat_id, :customer_user_id, :movie_movie_id);", nativeQuery = true)
	public int saveSeat(@Param("book_id") int bid, @Param("seat_id") String seat, @Param("customer_user_id") Integer cid, @Param("movie_movie_id") Integer mid);

	
	@Query(value="select * from book_ticket where customer_user_id=?1", nativeQuery = true)
	public List<BookTicket> findAllByUserId(int userId);


	//public void deleteAllByBookId(Integer bkid);
	
	@Modifying 
	@Transactional
    @Query(value = "delete from book_ticket where book_id = :book_id",nativeQuery = true)
    public int deleteByBookingId(@Param("book_id") int book_id);

}