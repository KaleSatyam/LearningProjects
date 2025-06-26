package string;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class countvovel {

	public static void main(String[] args) throws IOException {
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter the String ");
		String str=br.readLine();
		//String str="m";
		int count=0;
		
		char[] ch=str.toCharArray();
		for(char cc:ch)
		{
			switch(cc)
			{
			case 'a':
			case 'e':
			case 'i':
			case 'o':
			case 'u':
			case 'A':
			case 'E':
			case 'I':
			case 'O':
			case 'U':
				count++;
				break;
			}
		}
		System.out.println("no of vovels are :"+ count);
		}

	}


