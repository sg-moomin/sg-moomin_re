package com.heejea.simple.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.heejea.simple.entity.blogPostEntity;


@Repository
public interface blogRepository extends JpaRepository<blogPostEntity, Integer> {
	// Iterable<blogPostEntity> findAll();
	
	
	// find postMainTitle
	
//	@Query(value = "SELECT * FROM blog where postmaintitle = :postMainTitle", nativeQuery = true)
//	List<blogPostEntity> findByPostMainTitle(@Param("postMainTitle") String postMainTitle);
	
	
}
