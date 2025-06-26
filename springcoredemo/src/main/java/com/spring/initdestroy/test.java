package com.spring.initdestroy;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import sun.print.PeekGraphics;

public class test {
	
	public static void main(String[] args) {
		AbstractApplicationContext con=new ClassPathXmlApplicationContext("com/spring/initdestroy/config.xml");
//		vadapaav vada=(vadapaav)con.getBean("vadapav");
//		System.out.println(vada);
	con.registerShutdownHook();
//		
//		System.out.println("++++++++++++++++++++++++++++++++++++");
//			pepsi p=(pepsi)con.getBean("pep");
//			System.out.println(p);
	byannotaofspring banno=(byannotaofspring)con.getBean("anno");
	System.out.println(banno);
		
	}

}
