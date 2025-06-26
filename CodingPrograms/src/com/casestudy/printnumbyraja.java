package com.casestudy;

public class printnumbyraja {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
			for(int i=100;i<=500;i++)
			{
				if(i % 7==0)
				{
					System.out.println("raja");
				}
				else if(i % 11==0)
				{
					System.out.println("software");
				}
				else if(i % 11==0 && i % 7==0)
				{
					System.out.println("raja software");
				}
				else {
					System.out.println(i);
				}
				
			}
	}

}
