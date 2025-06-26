package com.interface1;




interface Printable{  
void print1();
default void show1() {
	System.out.println("in a show1");
}
}  

interface Showable{  
void show();  
void print();
}  

class multipleinheritbyinterface implements Printable,Showable{  
	
	public void print1() {

		System.out.println("in a print1");
		
	}
public void print()
{
	System.out.println("Hello");
}

public void show()
{
	Printable.super.show1();
	System.out.println("Welcome");
}  


  
public static void main(String args[]){  
	multipleinheritbyinterface obj = new multipleinheritbyinterface();  

obj.print();  
obj.show(); 
obj.print1();
 }



}  
