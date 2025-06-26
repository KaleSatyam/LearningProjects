package exceptiondemo;
import java.util.*;

class pinex extends RuntimeException
{
	pinex(String s)
    {
    	super(s);
    }
}

public class passworddemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		int b=3;
		Scanner sc=new Scanner(System.in);
		for(i=1;i<=3;i++)
		{
			System.out.println(" enter password you have"+" "+ b--+" "+"chances");
			int n=sc.nextInt();
			if(n!=1234)
			{
				  if(i==3)
				  	{
					  	throw new pinex(" your card is blocked for 24 hours by satyam");
				  	}
	
			}
			else
			{
				System.out.println(" pin is correct");
			break;
			}
		}
System.out.println("continue");
sc.close();
	}
}	

		
	/*	for(i=1;i<=3;i++)
		{
			System.out.println(" enter password you have"+" "+ b--+" "+"chances");
			int n=sc.nextInt();
			if(n==1234)
			{
				System.out.println("pass is correct");
			}
			else
			{
				System.out.println("pass not correct");
			}
			
		}
		
	*/	
		
