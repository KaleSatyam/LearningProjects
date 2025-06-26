package patterns;

public class secondpattern {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		 for (int i=1; i<=5; i++) 
	        { 
	            // Print space in decreasing order 
	            for (int j=5; j>i; j--)
	            {
	                System.out.print(" ");
	            }
	            // Print star in increasing order
	            for (int k=1; k<=i; k++)
	            {
	                System.out.print("*");
	            }
	            System.out.println();
	   }
  }

}
