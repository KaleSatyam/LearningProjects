package inheritance;

class a{
	int i=10;
	
	public void printvalue() {
		System.out.println(" in a");

	}
}

class b extends a
{
	int i=12;
	
	public void printvalue()
	{
		System.out.println(" in b");
	}
}



public class inheritanceTest1 extends b {
	
	public static void main(String[] args) {
		
		a p=new b();
		
		p.printvalue();  // calls b's method  
		System.out.println(p.i); //prints a's value   if both class have same method then parent object calls childs method automatically otherwise newer called
		
		// when we have variable it calls parent variable and calls itself method
		
		inheritanceTest1 b=new inheritanceTest1();
		b.printvalue();
		System.out.println(b.i);
		
		
	}
}	

