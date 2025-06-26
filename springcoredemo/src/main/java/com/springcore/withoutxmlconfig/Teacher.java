package com.springcore.withoutxmlconfig;

import org.springframework.stereotype.Component;

@Component
public class Teacher {
		
	String name;
	String subject;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	
	public Teacher(String name, String subject) {
		super();
		this.name = name;
		this.subject = subject;
	}
	public Teacher() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Teacher [name=" + name + ", subject=" + subject + "]";
	}
	
	public void display()
	{
		System.out.println("i am a teacher");
	}
	
}
