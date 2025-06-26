package inheritance;

 class bike{
	int speed=100;
	
	protected void display() {
		// TODO Auto-generated method stub
		System.out.println("in ad display");

	}
	
}
	
	class vehicle extends bike{
		int speed=200;
		
		protected void show() {
			// TODO Auto-generated method stub
			System.out.println("in a show");
		}
	}

public class speedexample  {
		
		public static void main(String[] args) {
			
			bike b=new vehicle();
		
			System.out.println(b.speed=200);
			
			b.display();
			
			
		}
 
		
}
