package com.Number;

import java.util.Scanner;

public class countdigitNUM {

	public static void main(String[] args) {
		int arr[]=new int[10];
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a number");
		int num=sc.nextInt();
		
		while(num>0)
		{
			int rem=num%10;
			System.out.println(arr[rem]++);
			num=num/10;
		}
		for(int i=0;i<=9;i++)
		{
			if(arr[i]>0)
			{
				System.out.println(i+" : "+arr[i]+"times");
			}
		}
		sc.close();
	}

}
