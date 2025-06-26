package collection;

import java.util.Vector;

public class vector1 {

	public static void main(String[] args) {
		Vector vec=new Vector();
		vec.add("i");
		vec.add("am");
		vec.add("satyam");
		vec.add(22);
		vec.add("year old"); 
		System.out.println(vec);
		System.out.println("capacity :"+vec.capacity());
		System.out.println("size :"+vec.size());
		
		
	}

}
