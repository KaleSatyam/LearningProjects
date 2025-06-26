package collection;

import java.util.ArrayList;
import java.util.Collections;

public class arraylistSORT {

	public static void main(String[] args) {
		ArrayList all=new ArrayList();
		all.add(25);
		all.add(20);
		all.add(96);
		all.add(29);
		all.add(27);
		all.add(28);
		all.add(21);
		System.out.println("arraylist are");
		System.out.println(all);
		Collections.sort(all);
		System.out.println("arraylist in ascending order");
		System.out.print(all+"  ");
		Collections.sort(all,Collections.reverseOrder());
		System.out.println("\narraylist in descending order");
		System.out.print(all+"  ");
	}

}
