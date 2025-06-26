package string;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class removeDuplicate {

	public static void main(String[] args) {
		
		removeDuplicate rd=new removeDuplicate();
		String Str="gettingridofthem";
		String st="i ana sattyam";
		System.out.println(st.trim());
				char[] charArray = Str.toCharArray();
				Set<Character> s=new HashSet<Character>();
			for (char c : charArray) {
				s.add(c);
			}
			System.err.println(s);
			StringBuffer sb=new StringBuffer();
			for (Character character : s) {
				sb.append(character);
			}
			System.out.println(sb);
			
//			char[] ch=Str.toCharArray();
//			StringBuffer sb=new StringBuffer(Str);
//			System.out.println(sb.toString());
//		String remove = rd.removeDuplicate(Str);
//					System.out.println(Str+"      "+remove);
			
	}
	
			public String removeDuplicate(String str) {
					
				
				TreeSet<Character> st=new TreeSet<>();
				StringBuffer sb=new StringBuffer();
				
				for(int i=0;i<str.length();i++)
				{
					Character c=str.charAt(i);
					if(!st.contains(c))
					{
						st.add(c);
						sb.append(c);
					}
				}
				
				return sb.toString();
			}
			
			
}
