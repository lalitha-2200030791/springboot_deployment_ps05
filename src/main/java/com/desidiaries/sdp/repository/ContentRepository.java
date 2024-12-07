package com.desidiaries.sdp.repository;

import java.util.List;

import com.desidiaries.sdp.model.Content;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentRepository extends JpaRepository<Content, Long> {
    @Query("SELECT c.title FROM Content c WHERE LOWER(c.title) LIKE LOWER(CONCAT('%', :query, '%'))")
    List<String> findByKeyword(@Param("query") String query);
}

