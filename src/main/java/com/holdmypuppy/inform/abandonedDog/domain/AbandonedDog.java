package com.holdmypuppy.inform.abandonedDog.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class AbandonedDog {
	
	private int id;

	private int userId;
	
	private String title;
	
	private String dogName;
	
	private String breed;
	
	private int age;
	
	private String gender;
	
	private String neutralization;
	
	private String mbti;
	
	private String imagePath;
	
	private String content;
	
	private Date createdAt;
	
	private Date updatedAt;

}
