package com.Number;

import java.util.Scanner;
public class digitinNUM {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a num");
		int num=sc.nextInt();
		while(num>0)
		{
			int rem=num%10;
			System.out.println(rem);
			num=num/10;
		}
		sc.close();
	}

}
