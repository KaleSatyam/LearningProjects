package string;

import java.util.Arrays;

import com.interface1.staticinterface;

public class anagram {

	public static  void main(String[] args) {
		// TODO Auto-generated method stub
		
		String str1="saam";
		String str2="maas";
//		String u1 = str1.toUpperCase();
//		String u2 = str2.toUpperCase();
//		System.out.println(str1.toUpperCase()+"  "+str2.toUpperCase());
		System.out.println(check(str1,str2));
		
		
	}
	public static boolean check(String str1,String str2)
	{
		String b="";
		char[] ch1=str1.toCharArray();
		char[] ch2=str2.toCharArray();
		Arrays.sort(ch1);
		Arrays.sort(ch2);
		
		return Arrays.equals(ch1, ch2);
	}

}
