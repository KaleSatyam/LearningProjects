package samples;

import java.util.Scanner;

public class leapyear {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter year");
		int year=sc.nextInt();
		
			if(year%4==0)
			{
				System.out.println("this is leap year");
			
			}
			else
			{
				System.out.println("this is not leap year");
			
			}
			
	
		
	}

}
