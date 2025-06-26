package collection;

import java.util.Collections;
import java.util.LinkedList;

public class collectionMethods {

	public static void main(String[] args) {
	LinkedList ll=new LinkedList();
	ll.add(15);
	ll.add(155);
	ll.add(89);
	ll.add(255);
	ll.add(54);
	ll.add(87);
	ll.add(45);
	System.out.println(ll);
	System.out.println("sorting elements");
	Collections.sort(ll);
	System.out.println(ll);
	
		int key=155;
		int index=Collections.binarySearch(ll, key);
		System.out.println("element   "+key+"  is exist at  "  +index+"  position");
		
		System.out.println("\n shuffling.....");
		Collections.shuffle(ll);
		System.out.println(ll);
		
		System.out.println("\n Min Max....");
		System.out.println("Min value is "+Collections.min(ll));
		System.out.println("Max value is "+Collections.max(ll));
		
		System.out.println("\n copying list");
		
		LinkedList ll2=new LinkedList();
		ll2.add("satyam");
		ll2.add("divya");
		ll2.add("shubam");
		ll2.add("mahesh");
		ll2.add("shrutik");
		ll2.add("arnav");
		ll2.add("cat");
		
		System.out.println("\n Before copying   "+ll2);
		Collections.copy(ll2, ll);
		System.out.println("\n After copying  "+ll2);
		
		System.out.println("\n filling....");
		Collections.fill(ll2,"paisa");
		System.out.println(ll2);
	}

}
