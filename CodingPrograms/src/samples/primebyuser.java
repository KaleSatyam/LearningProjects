package samples;

import java.util.Scanner;

public class primebyuser {
	
	public static void main(String[] args) {
	
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter a no to check prime");
	int num=sc.nextInt();
	checkprime(num);
	
	}

	private static void checkprime(int num) {
		int count=0;
		for (int i = 1; i <=num; i++) {
			if(num%i==0)
			{
				count++;
			}
		}
		if(count<=2)
			System.out.println("Number is prime");
		System.out.println("Number is not prime");
		
	}

}
