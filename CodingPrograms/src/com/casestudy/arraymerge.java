package com.casestudy;
//satyam kale
import java.util.Arrays;

public class arraymerge {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		arraymerge am=new arraymerge();
			int[] a1= {1,2,3};
			int[] a2= {23,343,545,5454};
			
			int[] merge = am.merge(a1, a2);
			System.out.println("merged array is : "+Arrays.toString(merge));
			
	}
	
	public   int[] merge(int[] a1,int[] a2)
	{
		int[] a3=new int[a1.length + a2.length];
		int count=0;
		for(int i=0;i<a1.length;i++)
		{
			a3[count]=a1[i];
			count++;
		}
		
		for(int i=0;i<a2.length;i++)
		{
			a3[count]=a2[i];
			count++;
		}
		
		
		System.out.println(Arrays.toString(a3));
		return a3;
	}

}
