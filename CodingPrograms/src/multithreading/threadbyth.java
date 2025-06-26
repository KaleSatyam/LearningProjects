package multithreading;


//creating threadby Thread class
public class threadbyth extends Thread{
	
	//tast for thread
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for (int i = 10; i >=0; i--) {
			System.out.println("second thread  "+i);
			try {
				Thread.sleep(3000);
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
	}
	
}


