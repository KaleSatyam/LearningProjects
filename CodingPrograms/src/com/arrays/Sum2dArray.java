package com.arrays;

public class Sum2dArray {

	public static void main(String[] args) {
		int arr[][]= {{2,3,6,4},{2,3,6,4},{2,3,6,4},{2,3,6,4}};
		int sum=0;
		System.out.println("Array is");
		display(arr);

		
		for(int i=0;i<arr.length;i++)
		{
			for(int j=0;j<arr[i].length;j++)
			{
				 sum=sum+arr[i][j];
			}
		}
		System.out.println("Sum is "+sum);
	}
	
	
	private static void display(int[][] arr) {
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
