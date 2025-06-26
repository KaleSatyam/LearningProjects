package com.Number;

import java.util.Scanner;

public class fibonaciilimit {

	public static void main(String[] args) {
		int	first;
		int sum=0;
		int count=1;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter beginning");
		first=sc.nextInt();
		System.out.println("Enter ending");
		int end=sc.nextInt();
		
			int second=first+1;
			
		 	for(int i=first;i<=end;i++)
		 	{
		 		System.out.println(first);
		 		sum=first+second;
		 		first=second;
		 		second=sum;
		 		count++;
		 	}
		 	System.out.println();
		 	System.out.println("total numbers  are : "+count);
			sc.close();
	}

}
