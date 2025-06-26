package collection;

import java.util.Stack;

public class stack {

	public static void main(String[] args) {
		Stack st=new Stack();
		st.push("satyam");
		st.push("is a");
		st.push("java");
		st.push("developer");
		System.out.println(st);
		
		st.pop();
		System.out.println(st);
		
	}

}
