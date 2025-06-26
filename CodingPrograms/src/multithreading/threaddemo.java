package multithreading;
import java.lang.Thread;

class userthread extends Thread
{
	public void run()
	{
		System.out.println("my name is satyam");
	}
}


//creating thread with runnable
public class threaddemo implements Runnable{
	
	//task for thread
	public void run()
    {
		int cnt=0;
      for (int i = 1; i <=10; i++) {
    	  for(int j=1;j<=i;j++)
    	  {
    	  if (i%j==0) 
    	  {
			cnt++;
    	  	}
    	  }
    	  
    	  if(cnt==2)
    	  {
    		  System.out.println(i +"   is prime");
    	  }else
    	  {
    		  System.out.println(i+"   is not prime");
    	  }
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		cnt=0;
	}
      
    } 
    public static void main(String[] args) {
        //creating object of threaddemo
    	threaddemo dd=new threaddemo();
    	Thread td=new Thread(dd);
    	
    	threadbyth thr=new threadbyth();
    td.start();
String name = Thread.currentThread().getName();
long s = Thread.currentThread().getId();
   // thr.start();
  
try {
	Thread.sleep(10000);
} catch (InterruptedException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
  System.out.println(name+"   "+td.getName()+"   "+thr.getName());
  System.out.println(s+"   "+td.getId()+"   "+thr.getId());
    
  userthread tm=new userthread();
  tm.start();
    }
}
