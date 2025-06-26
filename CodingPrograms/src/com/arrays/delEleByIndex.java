package com.arrays;

import java.util.Arrays;

public class delEleByIndex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
				
		
		int[] Myarr= {1,5,4,8,9,2,4,45,5};
				int index=4;
				int secarr[]=new int[Myarr.length-1];
				
				System.out.println(Arrays.toString(Myarr));
				
				
			for(int i=0,k=0;i<Myarr.length;i++)
			{
				if(i==index)
				{
						continue;
					}
						secarr[k++]=Myarr[i];
					
					
				}
				
				for(int i:secarr)
				{
					System.out.print(i+" ");
				}
				
 	}

}
