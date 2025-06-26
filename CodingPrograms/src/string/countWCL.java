package string;

import java.util.Scanner;

public class countWCL {

	public static void main(String[] args) {
		int count=0 ,c=0,l=1;
		
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter String ");
		String str=sc.nextLine();
		for(int ch=0;ch<str.length();ch++) {
			if(str.charAt(ch)==' ')
			{
				count++;
			}
		}
		System.out.println("total words are  "+(count+1));
		
		for(int ch=0;ch<str.length();ch++) {
			if(str.charAt(ch)==' ')
			{
				continue;
			}
			else if(str.charAt(ch)>=65 || str.charAt(ch)<=90 || str.charAt(ch)>=97 ||str.charAt(ch)<=122)
			{
				c++;
			}
		}
		System.out.println("Characters are  "+c);

		
		for(int ch=0;ch<str.length();ch++) {
			if(str.charAt(ch)=='\n')
			{
				l++;
			}
		}
		System.out.println("Lines are  "+l);
		
		
		int space=0,chr=0;
		for(int ch=0;ch<str.length();ch++) {
			if(Character.isWhitespace(str.charAt(ch))) {
				space++;
			}else if(Character.isLetter(str.charAt(ch)) ) {
				chr++;
			}

		}
		System.err.println("space are "+space);
		System.err.println("Chars are "+chr);

	}
	
	
	
	
}
