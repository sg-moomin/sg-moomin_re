package com.heejea.simple.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

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
@Entity(name="myservice")
public class myServiceEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;
	
	@Column(nullable = false, unique = true, length = 100)
	private String urlroot;
	
	@Column(nullable = false, length = 100)
	private String imgtitle;
	
	@Column(nullable = false, length = 500)
	private String title;
	
	@Column(nullable = false, length = 1000)
	private String contents;
	
	
	//	@Builder
	public myServiceEntity(String urlroot, String imgtitle, String title, String contents) {
		this.urlroot = urlroot;
		this.imgtitle = imgtitle;
		this.title = title;
		this.contents = contents;
	}
	
}

