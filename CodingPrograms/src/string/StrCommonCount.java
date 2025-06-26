package string;

import java.util.Scanner;

public class StrCommonCount {

	public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter string");
	String str=sc.nextLine();
	int arr[]=new int[256];
	for(int i=0;i<str.length();i++)
	{
		if(str.charAt(i)==' ')
			continue;
					arr[str.charAt(i)]++;
	}
	for(int i=0;i<150;i++)
	{
		if(arr[i]>0)
		{
			System.out.println((char)(i)+" : "+arr[i]);
		}
	}
	sc.close();
	}

}
