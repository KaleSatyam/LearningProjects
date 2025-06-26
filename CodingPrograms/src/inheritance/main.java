package inheritance;

import java.util.ArrayList;
import java.util.List;

public class main {

	

	public static void main(String[] args) {
	employee emp=new employee();
	emp.setId(12l);
	emp.setFirstName("satyam");
	emp.setLastName("kale");
		
//		List<employee>  e= new ArrayList<>();
//		e.add(emp);
//		
		
		
		
		
		manager mgr=new manager();
		
		mgr.setSubordinates(emp);
        mgr.setId(1L);
        mgr.setFirstName("Lokesh");
        mgr.setLastName("Gupta");
         
        System.out.println(mgr);

	}

}
