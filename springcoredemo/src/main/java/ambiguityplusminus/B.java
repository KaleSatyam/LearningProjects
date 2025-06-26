package ambiguityplusminus;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class B {

	public static void main(String[] args) {
		ApplicationContext con=new ClassPathXmlApplicationContext("ambiguityplusminus/config.xml");
		A a=(A)con.getBean("aclas");
		System.out.println(a);
	}
		
}
