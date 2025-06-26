package inheritance;

class plus{
   public int addition2(int a,int b){
		System.out.println("in plus");
		System.out.println(a+b);
	   return a+b;
	}
}

class add extends plus
{
	
	int a;
	int b;
	
	public int addition1(int a,int b)
	{
		super.addition2(a, b);
		System.out.println("in add");
		this.a=a;
		this.b=b;
		return a+b;
	
}
}

	class addnum extends add
	{
		
		public int addition(int a,int b)
		{
			System.out.println("in addnum");
			return a+b;
		
		}
	}

public class inheritdemo {

	public static void main(String[] args) {
	
//		add a1=new add();
//		a1.a=10;
//		a1.b=20;
//		System.out.println(a1.addition(a1.a,a1.b));
		
//		addnum a=new addnum();
//		a.a=5;
//		a.b=3;
//		System.out.println(a.addition(a.a,a.b));
		
//		add a2=new addnum();
//		
//		System.out.println(a2.addition1(1, 2));
//		System.out.println(a2.addition2(7, 2));
	
	}

}
