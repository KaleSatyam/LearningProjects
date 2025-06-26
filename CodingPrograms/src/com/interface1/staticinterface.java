package com.interface1;


@FunctionalInterface
interface my
{
	void display(int a,int b);
	static void run()
		{
			System.out.println("i am static method");
		}
	
}

public class staticinterface implements my {

	
		public static void main(String[] args) {
			
			my.run();
			
			my m=( a,b)->System.out.println("I am in lambda expression : "+(a + b));
			m.display(5,19);
			
		}

		@Override
		public void display(int a,int b) {
			// TODO Auto-generated method stub
			
		}




}
