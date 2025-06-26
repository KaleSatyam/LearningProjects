package multithreading.sync;

public class main {
	public static void main(String[] args) {
		Book b=new Book();
		producer prod=new producer(b);
		consumer cons=new consumer(b);
		prod.start();
		cons.start();
		
	}

}
