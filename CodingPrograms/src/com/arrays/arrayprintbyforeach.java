package com.arrays;

public class arrayprintbyforeach {

	public static void main(String[] args) {

		// 2d array cannot printby for each
		int a[] = { 2, 5, 8, 6, 8, 6 };

		for (int b : a) {
			System.out.print(b + " ");
		}

		System.out.println("------------------------");

		System.out.println(arrayprintbyforeach.reverse(1534236469));

	}

	public static int reverse(int x) {

		int rem = 0;
		int rev = 0;

		while (x != 0){

		
			rem = x % 10;  //2
			rev = (rev * 10) + rem; //3 , 30+2 32
			x = x / 10;  //11

		}
		return rev;

	}
}
