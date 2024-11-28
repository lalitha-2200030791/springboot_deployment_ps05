package com.desidiaries.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.desidiaries.sdp.model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>{

	@Query("select c from User c where c.email=?1 and c.password=?2")
	public User checkUserLogin(String email,String password);	
	 @Query("select c.id from User c where c.email=?1")
	    public Long findUserIdByEmail(String email); 
}


