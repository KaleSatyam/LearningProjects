package collection;

import java.util.ArrayList;
import java.util.Collections;

import com.sun.org.apache.xerces.internal.impl.dv.ValidatedInfo;

public class arraylistReverse {

	public static void main(String[] args) {
		ArrayList<Integer> al=new ArrayList<Integer>();
		al.add(12);
		al.add(15);
		al.add(18);
		al.add(17);
		al.add(1);
		al.add(82);
		
		System.out.println(al);
		Collections.reverse(al);
		System.out.println(al);
				
	

	}

}
