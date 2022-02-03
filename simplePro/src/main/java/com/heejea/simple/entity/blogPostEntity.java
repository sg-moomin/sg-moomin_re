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
@Entity(name="blogpost")
public class blogPostEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String postid;
	
	@Column(nullable = false, length = 500)
	private String postmaintitle;
	
	@Column(nullable = false, length = 100)
	private String postsntitle;

	@Column(nullable = false, length = 1000)
	private String postsn;
	
	@Column(nullable = false, length = 300)
	private String posturl;

	@Column(nullable = false, length = 300)
	private int postlvl;
	// private int postlvl;

	@Column(nullable = false, length = 300)
	private int postupperlvl;
	// private int postupperlvl;

	//	@Builder
	public blogPostEntity(String postmaintitle, String postsntitle, String postsn, String posturl) {
		this.postmaintitle = postmaintitle;
		this.postsntitle = postsntitle;
		this.postsn = postsn;
		this.posturl = posturl;
	}
	
}

