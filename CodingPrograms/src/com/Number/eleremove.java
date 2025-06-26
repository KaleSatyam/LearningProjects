package com.Number;

import java.util.Arrays;

public class eleremove {

	public static void main(String[] args) {
		int first[]= {1,2,3 ,5,6};
		System.out.println("first array is :"+Arrays.toString(first));
		int index=4;
		int second[]=new int[first.length];
		for(int i=0,k=0;i<=first.length;i++)
		{
			if(i==index)
			{
				continue;
				
			}
				first[i]=second[k++];
		} 
		System.out.println("new array is :"+Arrays.toString(second));
	}

}