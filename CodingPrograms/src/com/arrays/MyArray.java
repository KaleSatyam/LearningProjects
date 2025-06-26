package com.arrays;

import java.util.Scanner;

public class MyArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
            //int []a=new int[5];
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Size of array");
		int s=sc.nextInt();
		int []a=new int[s];
		for(int i=0;i<s;i++)
		{
			System.out.println("Enter "+i+" element:");
				a[i]=sc.nextInt();
			
		}
		System.out.println("Your Array:");
		for(int i=0;i<s;i++)
		{
			System.out.println(a[i]);
		}
		
		System.out.println("\nPrint array using foreach\n");
		for(int aa:a) {
			System.out.println(aa);
		}
		sc.close();
	}

}
