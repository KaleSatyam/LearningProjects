package com.test1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class list {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//[100,123,345,34,666,34,56,90,234,100]
		
		int max=0;
		int secmax=0;
		
		List<Integer> list=new ArrayList<Integer>();
		
		list.add(100);
		list.add(123);
		list.add(345);
		list.add(56);
		list.add(34);
		list.add(34);
		list.add(666);
		list.add(90);
		list.add(234);
		list.add(100);
		System.out.println(list);
		
		for (Integer i : list) {
			
			if(i>=max)
			{
				secmax=max;
				max=i;
				
				
			}else  if(i>=secmax )
			{
				secmax=i;
			}
			
			
		}
		System.out.println( max + "  :  "+ secmax);
		System.out.println("Size : "  +list.size());
		Collections.sort(list);
		System.out.println(list);
		System.out.println("max "+list.get(list.size()-1));
		System.out.println("secmax "+list.get(list.size()-2));
	}
	

}
