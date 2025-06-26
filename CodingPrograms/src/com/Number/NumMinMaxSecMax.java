package com.Number;

import java.util.Scanner;

public class NumMinMaxSecMax {

	public static void main(String[] args) {
		int max=Integer.MIN_VALUE;
		int min=Integer.MAX_VALUE;
		int secmax=Integer.MIN_VALUE;
		int secmin=Integer.MAX_VALUE;
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a number");
		int num=sc.nextInt();
		while(num>0)
		{
			int rem=num%10;
			if(rem>=max)
			{
				secmax=max;
			
				max=rem;
			}
			else if(rem>=secmax)
			{
				secmax=rem;
			}
			if(rem<=min)
			{
				secmin=min;
			min=rem;
			}
			else if(rem<=secmin)
			{
				secmax=min;
			}
			num=num/10;
		}
		System.out.println("max :"+max+" "+"min :"+min+" "+"secmax :"+secmax+" "+"secmin :"+secmin);
		sc.close();
	}

}
