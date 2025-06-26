package com.springcore.ref;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	ApplicationContext con= new ClassPathXmlApplicationContext("com/springcore/ref/refconfig.xml");
	A a=(A)con.getBean("aref");
	System.out.println(a.getX());
	System.out.println(a.getObj().getY());
	System.err.println(a);
	
	}

}
