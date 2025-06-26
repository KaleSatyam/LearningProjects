package com.Number;

public class SwapNum {

	public static void main(String[] args) {
		int a=10,b=20;
		int c=30,d=40;
		int temp=0;
		System.out.println("Swapping by temp ");
		System.out.println("A :"+a+" "+"B :"+b);
		
			temp=a;
			a=b;
			b=temp;
			
		System.out.println("A :"+a+" "+"B :"+b);
		
		System.out.println("Swapping without temp");
		System.out.println("C :"+c+" "+"D :"+d);
		c=c+d;
		d=c-d;
		c=c-d;
		
		System.out.println("C :"+c+" "+"D :"+d);
	}
}
