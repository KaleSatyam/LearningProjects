package com.arrays;

import java.util.Arrays;

public class print2 {

	public static void main(String[] args) {
		
	int arr[][]= {	{10,20,30},
										{99,66,55,67}
					 };
	
		for(int i=0;i<arr.length;i++)
		{
			for(int j=0;j<arr[i].length;j++)
			{
				System.out.print(arr[i][j]+" ");
			}
			System.out.println();
		}
	}

}
