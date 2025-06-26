package samples;

class sachin 
{
	void sachin()
	{
		System.out.println("he is batsman ");
	}
}
class arjun extends sachin
{
	void sachin()
	{
		System.out.println("he is bowler");
	}
}


public class override {

	public static void main(String[] args) {
		sachin s=new arjun();
		s.sachin();
		s=new sachin();
		s.sachin();

	}

}
