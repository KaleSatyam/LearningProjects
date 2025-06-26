package collection;

import java.util.HashSet;

public class Hashset {

	public static void main(String[] args) {
		HashSet<Integer> hs=new HashSet<Integer>();
		hs.add(10);
		hs.add(52);
		hs.add(10);
		hs.add(565); 
		hs.add(885);
		hs.add(22);
		hs.add(77);
		System.out.println("hashset doesnt allow any order and remove duplicates");
		System.out.println(hs);
		
		System.out.println("BY new for loop");
		hs.forEach(e->{
			System.out.println(e);
		});
		
		System.out.println("\n hashset to array");
		Object[] arr = hs.toArray();
		for(Object ar:arr)
		{
			System.out.println(ar);
		}
	}

}
