package multithreading.sync;

class Customer{  
int amount=9000;  
  
synchronized void withdraw(int amount){  
System.out.println("going to withdraw...");  
  
if(this.amount<amount){  
System.out.println("Less balance; waiting for deposit...");  
try{wait();}catch(Exception e){}  
}  
this.amount-=amount;  
System.out.println("withdraw completed...");  
}  
  
synchronized void deposit(int amount){  
System.out.println("going to deposit...");  
this.amount+=amount;  
System.out.println("deposit completed... ");  
notify();  
}  
}  
  
class test{  
public static void main(String args[]) {  
final Customer c=new Customer();  
new Thread(){  
public void run(){
	try {
		Thread.sleep(2000);
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	c.withdraw(15000);
	
}  
}.start();  
new Thread(){  
public void run(){
	try {
		Thread.sleep(2000);
	} catch (InterruptedException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	c.deposit(10000);

}  
}.start();  
  
}}  