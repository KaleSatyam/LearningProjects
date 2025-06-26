package com.Number;
import java.util.*;

public class reverseno {
	static Scanner sc;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		sc=new Scanner(System.in);
		System.out.println("Enter a no ");
		int no=sc.nextInt();
		
		//int no=152;
		int palin=no;
				int rev=0;
				int rem=0;
				while(no!=0)
				{
					rem=no%10;
					rev=(rev*10)+rem;
					no=no/10;
				}
				System.out.println(rev);
				if(palin==rev)
				{
					System.out.println("no is palindrone");
				}
				else
				{
					System.out.println("no isn't palindrone");
				}
	}

}
