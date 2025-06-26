package collection;

import java.util.*;

public class countlist {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int count=0;
		Integer a[]= {2,5,9,7,6,6,7,8,9,6,3,2,7,4,2};
		List<Integer>al=new ArrayList<>(Arrays.asList(a));
		
		
		System.out.println(al);
	
		for(Integer  i:al)
		{
		int freq=Collections.frequency(al, i);
		System.out.println(i+" "+freq);		
		}
		
}

}
