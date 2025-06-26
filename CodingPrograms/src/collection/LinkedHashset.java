package collection;
import java.util.*;
public class LinkedHashset {

	public static void main(String[] args) {
		LinkedHashSet<Integer> hs=new LinkedHashSet<Integer>();
		hs.add(10);
		hs.add(52);
		hs.add(10);
		hs.add(565); 
		hs.add(885);
		hs.add(22);
		hs.add(77);
		System.out.println("Linked hashset maintain order and remove duplicates");
		System.out.println(hs);
		
		hs.forEach(a->{
			System.out.println(a);
		});
	}

}
