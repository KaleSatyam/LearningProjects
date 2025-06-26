package com.Number;

/*			1 2 3 5 8 13
*/
public class fibonaciiSERIES {

	public static void main(String[] args) {
	int	prev=0,second=1;
	int sum=0;
	int count=0;
		
	 	for(int i=1;i<=15;i++)
	 	{
	 		System.out.print(sum+" ");
	 		count++;
	 		sum=prev+second;
	 		prev=second;
	 		second=sum;
	 		
	 	}
	 	System.out.println();
	 	System.out.println(count);
	 	
	}
}
