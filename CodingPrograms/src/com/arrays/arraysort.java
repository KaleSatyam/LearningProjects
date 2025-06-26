package com.arrays;

import java.util.Arrays;

public class arraysort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a[]= {20,35,15,22,88,96,36,15,46};
		int temp;
		int i,j;
		System.out.println("array element in ascending order");
			for(i=0;i<a.length;i++)
		{
			for( j=i+1;j<a.length;j++)
			{
				if(a[i]>a[j])
				{
					temp=a[i];
					a[i]=a[j];
					a[j]=temp;
				}
			}
			System.out.print(a[i]+" ");
		}
		
			System.out.println("\n"+"array element in descending order");
		
			for(i=0;i<a.length;i++)
			{
				for( j=i+1;j<a.length;j++)
				{
					if(a[i]<a[j])
					{
						temp=a[i];
						a[i]=a[j];
						a[j]=temp;
					}
				}
				System.out.print(a[i]+" ");
				
			}
			System.out.println();
			System.out.println(Arrays.toString(a));
			
			System.out.println("printing alternate ");
			for(i=0;i<a.length;i+=2) {
				
				System.out.print(a[i]+" ");
			}
			
	}

}
