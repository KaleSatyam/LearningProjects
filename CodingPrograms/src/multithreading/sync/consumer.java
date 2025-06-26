package multithreading.sync;

public class consumer extends Thread {
	Book  b1;
	
	public consumer(Book b) {
		this.b1=b;
	}
	
	@Override
	public void run() {
		
		for (int i = 1; i <=10; i++) {
			try {
				this.b1.cons_book();
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
