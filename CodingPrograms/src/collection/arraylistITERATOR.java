package collection;

import java.util.ArrayList;
import java.util.Iterator;

public class arraylistITERATOR {

	public static void main(String[] args) {
		ArrayList<Object> all=new ArrayList<Object>();
		all.add(25);
		all.add("satyam");
		all.add(25);
		all.add(29);
		all.add(27);
		all.add(28);
		all.add("man");
		
		Iterator<Object> it=all.iterator();
		
		while(it.hasNext())
		{
			System.out.print(it.next()+"  ");
		}

	}

}
