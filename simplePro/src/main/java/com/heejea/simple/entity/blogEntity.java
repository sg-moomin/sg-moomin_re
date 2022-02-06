package com.heejea.simple.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
// table connect
@Entity(name="blog")
public class blogEntity {

	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(nullable = false)
	private String blogid;
	
	@Column(nullable = false, length = 500)
	private String blogmaintitle;
	
	@Column(nullable = false, length = 100)
	private String blogsntitle;

	@Column(nullable = false, length = 500)
	private String blogsn;
	
	@Column(nullable = false, length = 100)
	private String blogtag;
	
	@Column(nullable = false, length = 100)
	private String imgtitle;
	
	@Column(nullable = false, length = 100)
	private String postid;
	
	@Column(nullable = false)
	private String regdt;

	@Column(nullable = false, length = 50)
	private String regid;

	@Column(nullable = false)
	private String uptdt;

	@Column(nullable = false, length = 50)
	private String uptid;

//	@Builder
//	public blogEntity(String blogid, String blogmaintitle, String blogsntitle, String blogsn, String blogtag, String imgtitle, String postid, String regdt, String regid, String uptdt, String uptid) {
//		this.blogid = blogid;
//		this.blogmaintitle = blogmaintitle;
//		this.blogsntitle = blogsntitle;
//		this.blogsn = blogsn;
//		this.blogtag = blogtag;
//		this.imgtitle = imgtitle;
//		this.postid = postid;
//		this.regdt = regdt;
//		this.regid = regid;
//		this.uptdt = uptdt;
//		this.uptid = uptid;
//	}
	
}

