package com.arrays;

import java.util.Scanner;

public class countnuminArray {

	public static void main(String[] args) {
		int max=Integer.MIN_VALUE;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter size of array");
		int n=sc.nextInt();
		int arr[]=new int[n];
		int countarr[]=new int[n+1];
		for (int i = 0; i <n; i++) {
			System.out.println("Enter "+i+"th element");
			arr[i]=sc.nextInt();
			countarr[arr[i]]++;
		}
		
		for(int i=0;i<countarr.length;i++)
		{
			if(countarr[i]>0)
			{
				System.out.println(i+" : "+countarr[i]+"times");
			}
		}
		
		for(int i=0;i<countarr.length;i++)
		{
			if(countarr[arr[i]]>max)
			{
				max=countarr[arr[i]];
				int mostvalue=arr[i];
				System.out.println("maximum element "+mostvalue+" occur "+max+" times");
			}
		}
		
		sc.close();
	}

}
