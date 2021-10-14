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
@Entity(name="noticeboard")
public class noticeboardEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int nid;
	
	@Column(nullable = false, unique = true, length = 100)
	private String category;
	
	@Column(nullable = false, length = 500)
	private String title;
	
	
	@Column(nullable = false, length = 1000)
	private String contents;
	
	
//	@Builder
	public noticeboardEntity(String category, String title, String contents) {
		this.category = category;
		this.title = title;
		this.contents = contents;
	}

}
