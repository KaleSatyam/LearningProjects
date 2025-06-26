package com.oops;


final class sat{
	public void syso() {
		// TODO Auto-generated method stub
		System.out.println("in the final class");
	}
}

public class finalvar  {
	String string;
	
	public finalvar(String string) {
		this.string=string;
	}

	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		final int a=100;
		 
		int b=a;
		b=50;
		System.out.println(b);
			finalvar f = new finalvar("i am satyam");
	
			System.out.println(f.string);
	}
	
	

}
