package collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.TreeMap;

public class HashmapANDtreemap {

	public static void main(String[] args) {
	HashMap<Integer, Integer> hm=new HashMap<Integer, Integer>();
	hm.put(35, 8555);
	hm.put(352, 8555);
	hm.put(85, 8555);
	hm.put(98, 8555);
	hm.put(65, 8555);
	hm.put(15, 8555);
	hm.put(32, 8555);
	
	System.out.println("map removes duplicates");
	System.out.println("Hashmap is not maintain order...........\n");
	System.out.println(hm);
	
		
	System.out.println("\niterating hashmap by for each\n");
	
	
	for(Entry<Integer,Integer> n:hm.entrySet())
	{
		System.out.println(n.getKey()+"  :   "+n.getValue());
	}

	
	
	TreeMap<Integer, Integer> tm=new TreeMap<Integer, Integer>();
	tm.put(35, 8555);
	tm.put(35, 8555);
	tm.put(352, 8555);
	tm.put(85, 8555);
	tm.put(98, 8555);
	tm.put(65, 8555);
	tm.put(15, 8555);
	tm.put(32, 8555);
	System.out.println("\n \n\n\n\n\ntreemap is maintain order..........\n");
	System.out.println(tm);
	
	System.out.println("\niterating treemap by iterator\n");
	Iterator it=tm.entrySet().iterator();
		
	while(it.hasNext())
	{
		System.out.println(it.next()+"  ");
	}
	
	}

}
