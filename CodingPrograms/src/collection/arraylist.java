package collection;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class arraylist {

	public static void main(String[] args) {
		ArrayList<Object> al=new ArrayList<Object>();
		al.add(15);
		al.add("satyam");
		al.add(15.5);
		al.add('m');
		System.out.println(al);
		al.add(2,100);
		System.out.println("size of arraylist  "+al.size());
		al.remove(4);						//no 4th item
		System.out.println(al);
		
		ArrayList<Object> all=new ArrayList<Object>();
		all.add(25);
		all.add(20);
		all.add("satyam");
		all.add(29);
		all.add(27);
		all.add(28);
		all.add(21);
		
		
		
		System.out.println("iterating by simple for loop");
		for(int i=0;i<all.size();i++)
		{
			System.out.print(all.get(i)+"  ");
		}
		
		System.out.println();
		System.out.println("iterating by for each");
			for(Object c:all)
			{
				System.out.print(c+" ");
			}
			
			System.out.println();
			System.out.println("iterating by iterator");
		Iterator it=all.iterator();
		while ( it.hasNext()) {
			System.out.print(it.next()+" ");
			
		}
		
	}

}
