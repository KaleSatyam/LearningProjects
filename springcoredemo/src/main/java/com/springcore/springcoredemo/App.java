package com.springcore.springcoredemo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
    	ApplicationContext context=new ClassPathXmlApplicationContext("config.xml");
    	student st=(student)context.getBean("student");
    	System.out.println(st);
        System.out.println( "Hello World!" );
        
       course cours=(course)context.getBean("course1");
       System.out.println(cours);
    }
}
