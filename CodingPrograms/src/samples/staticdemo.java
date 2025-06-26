package samples;

public class staticdemo {
	int empid;
	static String comp="arena";
	  
	public staticdemo(int empid)
	{
		this.empid=empid;
	}
	void display()
	{
		System.out.println(empid+" "+comp);
	}
	static void show()
	{
		System.out.println(" my nameis satyam");
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		staticdemo sd=new staticdemo(101);
		sd.display();
		show();
		myname.myname();
	}

}

class myname
{
	static int a=10;
	
	static void myname()
	{
		System.out.println(a);
		
	}
}

class b
{
	static int a=10;
	
	static
	{
		a=10;
	}
}
