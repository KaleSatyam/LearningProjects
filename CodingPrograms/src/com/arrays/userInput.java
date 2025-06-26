package com.arrays;

import java.util.Scanner;

public class userInput {

	public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			System.out.println("Enter no of elments of array");
			int n=sc.nextInt();
			int arr[]=new int[n];
			for(int i=0;i<n;i++)
			{
				System.out.println("Enter "+i+"th element");
				arr[i]=sc.nextInt();
			}
			
			for(int j=0;j<arr.length;j++)			//for alternate print element
			{															//for(int j=0;j<arr.length;i=i+2)
				System.out.println("a["+j+"]"+" : "+arr[j]);
			}
			System.out.println("Array Length is :"+arr.length);
			sc.close();
	}

}
