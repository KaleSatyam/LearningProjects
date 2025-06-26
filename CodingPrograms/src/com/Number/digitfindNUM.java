package com.Number;

import java.util.Scanner;

public class digitfindNUM {

	public static void main(String[] args) {
		int len=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a number");
		int num=sc.nextInt();
		while(num>0)
		{
			len=len + 1;
			num=num/10;
		}
			System.out.println("no of digit are :"+len);
			sc.close();
	}

}
