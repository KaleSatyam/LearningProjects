package com.springcore.withoutxmlconfig;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Testmain {
	
	
	public static void main(String[] args) {
		ApplicationContext context=new AnnotationConfigApplicationContext(javaconfig.class);
		College col= context.getBean("col",College.class);
		System.out.println(col);
		col.Totteachers();
		
		Teacher tea=new Teacher();
		tea.setName("satyam");
		tea.setSubject("java");
		
	col.setTeacher(tea);
		System.out.println(col.getTeacher());
		col.getTeacher().display();
		
//		System.out.println(col.getTeacher().name);
//		System.out.println(col.getTeacher().subject);
		
	}
}
