package string;

import java.util.stream.Collectors;
import java.util.stream.Stream;

public class removeWhiteSpaceinString {
	
	public static void main(String[] args) {
		
		String s="i am Satyam";
		
//		s.replace(" ", " ");
//		System.out.println(s.replace (" ", ""));
		
		String[] split = s.split(" ");
		
		Stream.of(split).map(x-> x ).collect(Collectors.joining());
		
		System.out.println(Stream.of(split).map(x-> x  ).collect(Collectors.joining()));
		
//		String str="";
//		for(int i=0;i<split.length;i++) {
//			str=str+split[i];
//		}
//		
//		System.out.println(str);
	}
	

}
