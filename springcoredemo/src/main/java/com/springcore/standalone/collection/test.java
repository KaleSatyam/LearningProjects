package com.springcore.standalone.collection;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			ApplicationContext context=new ClassPathXmlApplicationContext("com/springcore/standalone/collection/config.xml");
			person per=context.getBean("person1",person.class);
			System.out.println("------------------------------------------------------------");
			System.out.println(per.getFriends());
			System.out.println(per.getFriends().getClass().getName());
			System.out.println("------------------------------------------------------------");
			System.out.println(per.getAddress());
			System.out.println(per.getAddress().getClass().getName());
			System.out.println("------------------------------------------------------------");
			System.out.println(per.getFee());
			System.out.println(per.getFee().getClass().getName());
			System.out.println("------------------------------------------------------------");
			System.out.println(per.getProp());
			System.out.println(per.getProp().getClass().getName());
			
			
	}

}
