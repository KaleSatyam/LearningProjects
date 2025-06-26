package collection;

import java.util.Arrays;

import com.arrays.arraysort;

public class exception {

	public static void main(String[] args) {
		
		
//		 int i=10;
		 //3 12 24 10 9 6 23 44 24 3 24 22
    
		int cnt=0;
			int key=22;
		 int[] a= {3,12,24,10,9,6,23,44,24,3,24,22};
		 
		 for(int i=0;i<a.length;i++)
		 {
			 if(a[i]==key)
			 {
				 System.out.println(key +" found at "+ i+" " +a[i] );
			 }
			 
			 if(a[i] ==24 )
			 {
				 cnt++;
				 
				 System.out.println("position"+i);
			 }
		 }
		 
		
//		 System.out.println();
		 
		 
//		 System.out.println(10 * 20 + "Windows");    //30windows
		 System.out.println("Windows" + 10 * 20);  
		 
//		 angle angel
		 
		 String s1="angel";
		 String s2="oangle";
		 
		 s1.toLowerCase();
		 s2.toLowerCase();
		 
		 boolean b=false;
		 
		 	char[] charArray1 = s1.toCharArray();
		 	char[] charArray2 = s2.toCharArray();
		 	
		 	Arrays.sort(charArray1);
		 	Arrays.sort(charArray2);
		 	
		 	System.out.println(Arrays.equals(charArray1, charArray2));
		 	
//		 	if(s1.length()!=s2.length())
//		 	{
//		 		System.out.println("strings are not anagram");
//		 	}
//		 	else {
//		 	for(int i=0;i<charArray1.length;i++)
//		 	{
//		 		for(int j=0;j<charArray2.length;j++ )
//		 		{
//		 			if(charArray1[i]==charArray2[j] )
//		 			{
//		 				 b=true;
//		 				 break;
//
//		 			}
//		 			else {
//		 				 b=false;
//		 				 continue;
//		 				
//		 			}
//		 			
//		 		}
//		 	}
//		 	}
		 	
		 		
//		 	String str=null;
//		 	
//		 	System.out.println(str);
//		  throw new NullPointerException();
	}
}
