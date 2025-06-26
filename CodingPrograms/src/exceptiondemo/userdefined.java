package exceptiondemo;

public class userdefined {

	

	public static void main(String[] args) throws Exception{
		
		try {
			
			int a=10;
			
			do {
//				if(a==8)
//		throw new Exception("exception occurs");
			System.out.println(a);
			--a;
			}
			while(0<(int) a);
			System.out.println("out of do while loop");
		}
		
		finally {
			System.out.println("in the finnally block");
		}
		}

}
