package collection;

import java.util.*;

public class arraytoset {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Integer []a= {5,8,6,9,5,2,6,3,2,0 };
			Set<Integer>Set=new HashSet<>(Arrays.asList(a));
			Set<Integer>HashSettoTreeset=new HashSet<>(Arrays.asList(a));
			for(Integer i:HashSettoTreeset)
			{
				System.out.print(i+" ");
			}
	
			
	}

}
