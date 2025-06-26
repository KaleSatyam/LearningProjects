package com.springcore.withoutxmlconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component("col")
public class College {
	
	@Autowired
	private Teacher teacher;
		
	
	
	public Teacher getTeacher() {
		return teacher;
	}



	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}



	public College() {
		super();
		// TODO Auto-generated constructor stub
	}



	public void Totteachers()
	{
		System.out.println("Here is 10 teachers in the college");
	}
		
}
