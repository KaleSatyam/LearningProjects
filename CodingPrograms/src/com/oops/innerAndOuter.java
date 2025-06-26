package com.oops;

public class innerAndOuter{
	
	int a=10;
	 void dis() {
		 System.out.println("in the outer class");
		inner ia=new inner();
		ia.display();
	}
	
	class inner{ 
		int b=20;
		
	 void display() {
			System.out.println(a+b);

		}
	}
	
	public static void main(String[] args) {
		innerAndOuter i=new innerAndOuter();
	inner inner = i.new inner();
	inner.display();
		i.dis();
		
		
	}
	
}