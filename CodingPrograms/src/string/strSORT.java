package string;

import java.util.Arrays;
import java.util.Scanner;

public class strSORT {

	public static void main(String[] args) {
		int a[]= {1,2,3,4,5};
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter a string");
		String str=sc.next();
		
		char[] strarr=str.toCharArray();
		Arrays.sort(strarr);
		System.out.println(new String(strarr).trim());
	
	}

}
