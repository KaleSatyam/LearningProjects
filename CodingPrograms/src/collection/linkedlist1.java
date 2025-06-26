package collection;

import java.util.Iterator;
import java.util.LinkedList;

public class linkedlist1 {

	public static void main(String[] args) {
		LinkedList ll=new LinkedList();
		ll.add("satyam");
		ll.add(22);
		ll.add("pune");
		ll.add(411062);
		System.out.println(ll);
		System.out.println("size is : "+ll.size());
		System.out.println(ll.get(1));
		
		ll.addFirst("yasmin");
		ll.addLast("chikhli");
		ll.set(1, 23);
		System.out.println(ll);
		
		System.out.println("\niterate using for loop");
		for(Object i:ll)
		{
			System.out.println(i);
		}
		System.out.println("\niterate using iterator");
		
		Iterator it=ll.iterator();
		while(it.hasNext())
		{
			System.out.println(it.next());
		}
		
	}

}
