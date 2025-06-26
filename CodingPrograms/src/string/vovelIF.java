package string;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class vovelIF {

	public static void main(String[] args) throws IOException{
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the string");
		String str=br.readLine();
		int count=0;
		int[] arr=new int[500];
		for(int i=0;i<str.length();i++) 
		{
			if(vovelcnt(str.charAt(i)))
			{
				count++;				
			}
			
		}
		System.out.println(count);
	}

	private static boolean vovelcnt(char charAt) {
		if(charAt=='a' || charAt=='e' || charAt=='i' || charAt=='o' || charAt=='u' || charAt=='A' || charAt=='E' || charAt=='I' || charAt=='O' || charAt=='U')
					return true;
		return false;
	}

}
