package com.casestudy;

import java.util.Scanner;

public class checkfibonacii {

	
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("enter number");
		int num=sc.nextInt();
		if(checkfibonacci(num)==true)
		{
			System.out.println("number is fibonacci"+num);
		}
		else
		{
			System.out.println("number is not fibonacci"+num);
		}
		
		
	}

	public static boolean checkfibonacci(int n)
    {
        int a = 0;
        int b = 1;
        if (n==a || n==b)
        	return true ;
        int c = a+b;
        	while(c<=n)
        {
            if(c == n) 
            	return true;
            a = b;
            b = c;
            c = a + b;
        }
        return false;
    }
}
