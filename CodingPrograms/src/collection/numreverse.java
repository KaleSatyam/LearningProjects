package collection;

import java.util.*;

public class numreverse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
				Integer a[]= {25,45,54,52,95,59,88,12,21};		
				List<Integer>al=new ArrayList<Integer>(Arrays.asList(a));
				System.out.println(al);
				
				for(int i=0;i<a.length;i++)
				{
					int rev=(a[i]%10)*10+(a[i]/10);
					boolean b=al.contains(rev);
					if(b==true)
						System.out.println("("+a[i]+","+rev+")");
				}
	}

}
