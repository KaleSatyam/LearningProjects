package com.arrays;

import java.util.Arrays;

public class minMaxbyArray {

	public static void main(String[] args) {
	int arr[]= {20,25,25,65,98,74,58,45,669};
		Arrays.sort(arr);
		System.out.println(Arrays.toString(arr));
		System.out.println("highest element is= "+arr[arr.length-1]);
		System.out.println("highest element is= "+arr[arr.length-2]);
	}

}
