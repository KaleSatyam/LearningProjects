package collection;

import java.util.HashMap;
import java.util.Map.Entry;
import java.util.TreeMap;

public class sortMap {
		
	public static void main(String[] args) {
		HashMap<String, String> hm=new HashMap<String, String>();
		hm.put("apple", "kashmir");
		hm.put("santra", "mh");
		hm.put("banana", "kerla");
		hm.put("mango", "kolhapur");
		hm.put("orange", "odisa");
		
		System.out.println("-------------------------------------------------------");
		hm.entrySet().forEach(e->{
			System.out.println(e);
		});
		System.out.println("-------------------------------------------------------");
		for(Entry<String,String> e:hm.entrySet())
		{
			System.out.println(e.getKey()+"   "+e.getValue());
		}
		System.out.println("-------------------------------------------------------");
		System.out.println("Sorthing ");
		
		TreeMap<String, String> tr=new TreeMap<String, String>(hm);
	
		for(Entry<String,String> e:tr.entrySet())
		{
			System.out.println(e.getKey()+"   "+e.getValue());
		}
	}
	
}
