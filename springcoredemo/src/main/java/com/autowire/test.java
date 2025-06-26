package com.autowire;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			ApplicationContext con=new ClassPathXmlApplicationContext("com/autowire/config.xml");
			street st=con.getBean("str",street.class);
		System.out.println(st);
			
			
	}

}
