package com.abstraction;

abstract class sachin 
{
	abstract void role();
	
	sachin()
	{
		System.out.println("i am sachin");
	}
}



public class abstractdemo extends sachin{

	
	void role() {
		System.out.println("i am not sachin");
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		abstractdemo abs=new abstractdemo();// whenever we create object of class that extends abstract class this first call parent abstract class property
//		abs.role();
//		abs.role();
//	
		
	}

	

}
