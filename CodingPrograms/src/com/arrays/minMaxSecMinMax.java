package com.arrays;

import java.util.Scanner;


public class minMaxSecMinMax {
	static int max=Integer.MIN_VALUE;
	static int min=Integer.MAX_VALUE;
	static int secmax=Integer.MIN_VALUE;
	static int secmin=Integer.MAX_VALUE;
	
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter no of elments of array");
		int n=sc.nextInt();
		int arr[]=new int[n];
		for(int i=0;i<n;i++)
		{
			System.out.println("Enter "+i+"th element");
			arr[i]=sc.nextInt();
			
			 if(arr[i]>=max) 
			 {
				 secmax=max; 
				 max=arr[i];
			 
			 }
			 else if(arr[i]>=secmax)
			 { secmax=arr[i];
			 }
			 
			 if(arr[i]<=min) 
			 {
				 secmin=min; 
				 min=arr[i];
			 
			 }
			 else if(arr[i]<=secmin)
			 { secmin=arr[i];
			 }
		}
	System.out.println("Maximum number is :"+max(arr));
	System.out.println("Second Maximum number is :"+secmax);
	System.out.println("Minimum number is :"+min(arr));
	System.out.println("Second Minimum number is :"+secmin);
		
	}

	private static int  max(int[] arr) {

		for(int i=0;i<arr.length;i++)
		{
			if(arr[i]>=max)
				max=arr[i];
		}
		return max;
	}
	
//	private static int  secmax(int[] arr) {
//
//		for(int i=0;i<arr.length;i++)
//		{
//			if(arr[i]>=max)
//			{
//				secmax=max;
//				max=arr[i];
//			
//			}else if(arr[i]>=secmax)
//			{
//				secmax=arr[i];
//			}
//
//		}
//		return secmax;
//	}
		
	private static int  min(int[] arr) {

		for(int i=0;i<arr.length;i++)
		{
			
			if(arr[i]<=min)
				min=arr[i];
		}
		return min;
	}
	
//	public static int secmin(int[] arr)
//	{ 
//		for(int i=0;i<arr.length;i++) 
//		{
//	  if(arr[i]<=min) 
//	  { secmin=min; min=arr[i]; 
//	  } 
//	  else if(arr[i]<=secmin)
//	  {
//	  secmin=arr[i]; 
//	  }
//	  }
//		return secmin; 
//	}
	
}
