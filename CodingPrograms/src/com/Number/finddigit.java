package com.Number;

import java.util.Scanner;

public class finddigit {

	public static void main(String[] args) {
		boolean flag=false;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a number");
		int num=sc.nextInt();
		System.out.println("Enter a number(key) to find");
		int key=sc.nextInt();
		
		while(num>0)
		{
			int rem=num%10;
			if(rem==key)
			{
				System.out.println("key "+key+"is  existed ");
				flag=true;
				break;
			}
			num=num/10;
		}
		if(flag==false)
		{
			System.out.println("key not in number");
		}
	sc.close();
	}

}
