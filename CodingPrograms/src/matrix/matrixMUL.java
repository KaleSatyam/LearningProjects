package matrix;

import java.util.Scanner;

public class matrixMUL {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter rows of matrix");
		int row=sc.nextInt();
		System.out.println("Enter colums of matrix");
		int col=sc.nextInt();
		System.out.println("Enter values of first matrix");
		int mat1[][]=new int[row][col];
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<col;j++)
			{
				System.out.println("Enter Array "+"["+i+"]"+"["+j+"]");
				mat1[i][j]=sc.nextInt();
			}
		}
		display(mat1);
		
		System.out.println();
		System.out.println("Enter values of Second matrix");
		System.out.println();
		int mat2[][]=new int[row][col];
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<col;j++)
			{
				System.out.println("Enter Array "+"["+i+"]"+"["+j+"]");
				mat2[i][j]=sc.nextInt();
			}
		}
		display1(mat2);
		
		System.out.println();
		
		System.out.println("Multiplication of both array is");
		System.out.println();
		int mat3[][]=new int[row][col];
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<col;j++)
			{
				mat3[i][j]=0;
				for(int k=0;k<row;k++) {
					mat3[i][j]=mat3[i][j]+(mat1[i][k]*mat2[k][j]);
				}
			 
			}
		} 
		
		display2(mat3);

	}

	
	private static void display(int[][] mat1) {
		for(int i=0;i<mat1.length;i++)
		{
			for(int j=0;j<mat1.length;j++)
			{
				System.out.print(mat1[i][j]+" ");
			}
			System.out.println();
		}
	}
		
		private static void display1(int[][] mat2) {
			for(int i=0;i<mat2.length;i++)
			{
				for(int j=0;j<mat2.length;j++)
				{
					System.out.print(mat2[i][j]+" ");
				}
				System.out.println();
			}
		}
		
		private static void display2(int[][] mat3) {
			for(int i=0;i<mat3.length;i++)
			{
				for(int j=0;j<mat3.length;j++)
				{
					System.out.print(mat3[i][j]+" ");
				}
				System.out.println();
			}
		}
}
