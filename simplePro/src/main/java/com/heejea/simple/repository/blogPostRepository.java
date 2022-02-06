package com.heejea.simple.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.heejea.simple.entity.blogPostEntity;
import com.heejea.simple.vo.blogPostVo;


@Repository
public interface blogPostRepository extends JpaRepository<blogPostEntity, Integer> {
	// Iterable<blogPostEntity> findAll();
	
	
	// find postMainTitle
	
	@Query(value = "SELECT * FROM BlogPost where postmaintitle = :postMainTitle", nativeQuery = true)
	List<blogPostEntity> findByPostMainTitle(@Param("postMainTitle") String postMainTitle);
	
	@Query(value = "SELECT max(postId) FROM blogpost order by postId desc", nativeQuery = true)
	String selectMaxPostId(); 
	
	@Query(value = "select * from blogPost where postId = :id", nativeQuery = true)
	blogPostEntity findIdSelect(@Param("id") String findId);
	
	
	
	
}
