package com.connection;

import java.util.Arrays;

public class Demo {
	


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] a=new int[]{1,2,5};
		int[] b=new int[]{1,4};
		
		Demo d=new Demo();
		boolean compare = d.compare(a, b);
		if(compare=true) {
			System.out.println("arrays are equal");
		}
		
	}
	
	public boolean compare(int[] a,int[] b) {
	boolean flag=false;
		
		if(a.length!=b.length) {
			System.out.println("both array not equal");
		return flag=false;
		}
		
		Arrays.sort(a);
		Arrays.sort(b);
		
		for(int i=0;i<a.length;i++)
		{
			for(int j=0;j<b.length;j++) {
				
				if(a[i]!=b[j])
				{
					return flag=false;
				}
			}
		}
		
		return flag=true;
	}

}
