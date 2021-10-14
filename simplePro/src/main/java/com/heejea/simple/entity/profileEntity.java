package com.heejea.simple.entity;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

// getter 메소드 
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
// table connect
@Entity(name="profile")
public class profileEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	
	@Column(nullable = false, unique = true, length = 30)
	private String username;
	
	@Column(nullable = false, length = 100)
	private String name;
	
	@Builder
	public profileEntity(String username, String name) {
		this.username = username;
		this.name = name;
	}

}
