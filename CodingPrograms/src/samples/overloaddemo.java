

package samples;
import java.util.*;

abstract class vender //parent class
{
	abstract void fill();
}

class tea extends vender //child class
{
	void fill()
	{
		System.out.println(" i take tea");
	}
}

class coffee extends vender
{
	void fill()
	{
		System.out.println(" i take coffee ");
	}
}

class milk extends vender
{
	void fill()
	{
		System.out.println("i take milk");
	}
}

public class overloaddemo {


	public static void main(String[] args) {
	Scanner	sc = new Scanner(System.in);
		vender v;
		
	 System.out.println("enter 1 for tea"+"\n"+" enter 2 for coffee"+"\n" +" enter 3 for milk");
		int n=sc.nextInt();
		switch(n)
		{
		case 1: v=new tea();
			v.fill();
		break;
		
		case 2: v=new coffee();
		v.fill();
	    break;
	    
		case 3: v=new milk();
		v.fill();
	    break;
		}
	sc.close();
	}

}
