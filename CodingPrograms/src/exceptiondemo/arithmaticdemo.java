package exceptiondemo;

public class arithmaticdemo {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		int a=10,b=0;
		try
		{
			System.out.println(a+b);
			System.out.println(a/b);
		}
		catch(Exception e)
		{
			System.out.println(e);
			b++;
			System.out.println(a/b);
			
		}
			
	}

}
