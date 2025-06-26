package samples;

 abstract class man
{
	abstract void fly();
	
	void walk()
	{
		System.out.println("walking");
	}
	
	void jump()
	{
		System.out.println("jump");
	}
}
 
 class spiderman extends man
 {

	
	void fly() {
		// TODO Auto-generated method stub
		System.out.println("flying");
	}
 
 }
public class Supermandemo {
	
 public static void main(String args[]) {

	 spiderman m=new spiderman();
	 m.fly();
	 m.walk();
	 m.jump();
}
}
