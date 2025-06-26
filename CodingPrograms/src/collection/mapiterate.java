package collection;

import java.util.HashMap;
import java.util.Map;

public class mapiterate {

	public static void main(String[] args) {
		
		Map<Integer, String> hm=new HashMap<Integer, String>();
		
		hm.put(1, "satyam");
		hm.put(1, "satyam");
		hm.put(1, "peatibha");
		hm.put(2,"satyam");
		
		hm.entrySet().forEach(e->
		{
			System.out.println();
		});
		
		
	}

}
