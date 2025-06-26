package multithreading.sync;

public class Book {
		int b;
		boolean f=false;
		//if f is false  chance: producer
		//if f is true chance: consumer
	synchronized public void prod_book(int b) throws InterruptedException
		{
		if(f)
		{
			wait();
		}
			this.b=b;
			System.out.println("book produced    "+this.b);
			f=true;
			notify();
		}
	
	//if chance get consumer false
		synchronized public int cons_book() throws InterruptedException
		{
			if(!f)
			{
				wait();
			}
			System.out.println("book consumed    "+this.b);
			f=false;
			notify();
			return this.b;
		}
}
