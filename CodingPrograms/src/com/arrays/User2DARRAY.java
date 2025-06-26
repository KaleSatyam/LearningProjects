package com.arrays;

import java.util.Scanner;

public class User2DARRAY {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter rows");
		int row=sc.nextInt();
		System.out.println("Enter colums");
		int col=sc.nextInt();
		int array[][]=new int[row][col];
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<col;j++)
			{
				System.out.println("Enter Array "+"["+i+"]"+"["+j+"]");
				array[i][j]=sc.nextInt();
			}
		}
		System.out.println("Array is");
		display(array);
		
	}

	private static void display(int[][] array) {
		for(int i=0;i<array.length;i++)
		{
			for(int j=0;j<array[i].length;j++)
			{
				System.out.print(array[i][j]+" ");
			}
			System.out.println();
		}
		
	}

}
