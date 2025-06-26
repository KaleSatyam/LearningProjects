package com.arrays;

import java.util.Arrays;

public class reverseArray {

	public static void main(String[] args) {
		int a[]= {2,5,6,4,6,8};
		System.out.println("original array");
		for(int i=0;i<a.length;i++)
		{
			System.out.print(a[i]+" ");
		}
		System.out.println();
		System.out.println("After reverse of array");
		for(int i=a.length-1;i>=0;i--)
		{
			System.out.print(a[i]+" ");
		}

	}

}
