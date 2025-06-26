package ambiguityplusminus;

public class A {
	private int a;
	private int b;
	
	
	public A(int a,int b)
	{
		this.a=a;
		this.b=b;
		System.out.println("In int int ");
		System.out.println("Sum of a+b is" +(a+b));	
	}
	public A(float a,int b)
	{
		this.a=(int)a;
		this.b=b;
		System.out.println("In float and int");
		System.out.println("Sum of a+b is" +(a+b));	
	}


	@Override
	public String toString() {
		return "A [a=" + a + ", b=" + b + "]"+" {a+b =}"+(a+b);
	}
		

}
