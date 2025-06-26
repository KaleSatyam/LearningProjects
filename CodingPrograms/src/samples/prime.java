package samples;


public class prime
{
	static int cnt=0;
	public static void main(String args[])
	{
	int count=0,i,j;
	for(i=1;i<=10;i++)
	{
		for(j=1;j<=i;j++)
	{
		if(i%j==0)
		{
			count++;
		}	
	}
	if(count>2)
	{
		cnt++;
		System.out.println(i+" "+"no is not prime");
	}
	else
	{
		System.out.println(i+" "+"no is prime");
	}
	 count=0;
	
	}
	System.out.println("total prime are:"+cnt);
	}
}




/*public class prime {

	public static void main(String[] args) {
		
		int n=1515,count=0;
		for(int i=1;i<=5;i++)
		{
			if(n%i==0)
			{
				count++;
			}
			
				
		}
		if(count>2)
		{
			System.out.println("no is not prime");
		}
		else
		{
			System.out.println("no is prime");
		}
		
		
	}

}
*/
