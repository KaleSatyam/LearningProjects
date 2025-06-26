package multithreading;

public class daemoN extends Thread{  
	 public void run(){  
	  if(Thread.currentThread().isDaemon()){//checking for daemon thread  
	   System.out.println("daemon thread work");  
	  }  
	  else{  
	  System.out.println("user thread work");  
	 }  
	 }  
	 public static void main(String[] args){  
		 daemoN t1=new daemoN();//creating thread  
		 daemoN t2=new daemoN();  
		 daemoN t3=new daemoN();  
	  
	  t1.setDaemon(true);//now t1 is daemon thread  
	    
	  t1.start();//starting threads  
	  t2.start();  
	  t3.start();  
	 }  
	}  