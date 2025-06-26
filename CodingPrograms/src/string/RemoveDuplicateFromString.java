package string;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class RemoveDuplicateFromString {
	public static void main(String[] args) {
		
		String s="Satyam";
		char[] charArray = s.toCharArray();
		Set<Character> c=new HashSet<Character>();
		for (Character character : charArray) {
			c.add(character);
		}
		
		System.out.println(c.toString());
	}

}
