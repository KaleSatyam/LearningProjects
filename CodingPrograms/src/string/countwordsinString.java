package string;

import java.util.Arrays;
import java.util.Iterator;

public class countwordsinString {
	
public static void main(String[] args) {
	
		int char_size=256;
		
		int count[]=new int[char_size];
		
		String s="Satyam";
		
		for(int i=0;i<s.length();i++) {
			
			count[s.charAt(i)]++;
			
		}
		System.err.println(count.length);
		 for (int i = 0; i < 256; i++) {
	            if (count[i] != 0) {
	                System.out.println((char) i + " --> " + count[i]);
	            }
	        }
		
//		System.out.println(Arrays.toString(count));
//		Arrays.toString(count);
}

}
