package com.Number;

import java.util.Scanner;

public class factorialq {

	public static void main(String[] args) {
		int fact=1;
		int fact1=1;
	
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter no to find factorial");
		int no=sc.nextInt();
		System.out.println("Enter second no to find factorial");
		int no2=sc.nextInt();
		for(int i=no;i>=1;i--)
		{
			fact=fact*i;
		}
		System.out.println(no+" "+fact);
		
		int i=1;
		while(i<=no2)
		{
			fact1=fact*i;
			i++;
		}
		System.out.println(no2+" "+fact1);
		
		sc.close();
	}

}
