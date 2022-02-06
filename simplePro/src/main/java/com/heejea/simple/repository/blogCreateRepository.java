package com.heejea.simple.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.heejea.simple.entity.blogEntity;
import com.heejea.simple.vo.blogVo;


@Repository
public interface blogCreateRepository extends JpaRepository<blogEntity, Integer> {

	@Query(value = "SELECT * FROM blog order by blogid desc", nativeQuery = true)
	List<blogEntity> init(); 
	
	@Query(value = "SELECT max(blogId) FROM blog order by blogid desc", nativeQuery = true)
	String selectMaxBlogId(); 
	
    @Modifying
    @Query(value = "insert "
    				+ "into "
    				+ "blog (blogId, blogMainTitle, blogSn, blogSnTitle,  blogTag, imgTitle, postId, regDt, regId, uptDt, uptId) "
    				+ "VALUES (:blogs.blogId, :,:id)", nativeQuery = true)
    @Transactional
    void saveBlog(@Param("blogs") blogVo blog);
    
	
}
