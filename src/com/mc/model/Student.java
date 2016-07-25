package com.mc.model;

import java.util.ArrayList;
import java.util.Date;

import javax.validation.constraints.*;

import com.mc.controller.IsValidHobby;

public class Student {
	
	@Pattern(regexp="[^0-9]*") 
	private String name;
	
	@Size(min=2, max=30 /*, message="Hobby size should be between {min} and {max}"*/)  //Form Validation jars required
	@IsValidHobby 
	private String hobby;
	
	@Max(99999)
	private Long mobile;
	
	@Past
	private Date birthday;
	private ArrayList<String> skills;
	
	
	private Address address;
	
	public Student(){
		
	}
	
	
	public Student(String name, String hobby) {
		
		this.name = name;
		this.hobby = hobby;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}


	public Long getMobile() {
		return mobile;
	}


	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}


	public Date getBirthday() {
		return birthday;
	}


	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}


	public ArrayList<String> getSkills() {
		return skills;
	}


	public void setSkills(ArrayList<String> skills) {
		this.skills = skills;
	}

		
	

	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	@Override
	public String toString() {
		return "Student [name=" + name + ", hobby=" + hobby + ", mobile="
				+ mobile + ", birthday=" + birthday + ", skills=" + skills
				+ "]";
	}
	
	
	
	

}
