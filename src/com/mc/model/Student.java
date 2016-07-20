package com.mc.model;

public class Student {
	private String name;
	private String hobby;
	
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
	
		@Override
	public String toString() {
		return "Student [name=" + name + ", hobby=" + hobby + "]";
	}

}
