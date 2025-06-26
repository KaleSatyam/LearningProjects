package multithreading.sync;

public class producer extends Thread {
	Book b1;
	public producer(Book b) {
		this.b1=b;
	}
	
	public void run()
	{
		for( int i=1;i<=10;i++)
		{
			try {
				this.b1.prod_book(i);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

}
