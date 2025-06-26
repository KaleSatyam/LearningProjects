package com.casestudy;

import java.util.Arrays;
import java.util.Stack;

class bracketpairProgram {
	public static void main(String[] args) {
		
	
		String str = "{(P)[]}()(){}[]";

		char[] strarr = str.toCharArray();

//	System.err.println(Arrays.toString(strarr));
		try {
		Stack<Character> stack = new Stack<>();
		for (int i = 0; i < strarr.length; i++) {
			if (strarr[i] == '{' || strarr[i] == '[' || strarr[i] == '(') {
				stack.push(strarr[i]);
			} 
			
			char first = stack.peek();
			if (first == '(' && strarr[i] == ')' || first == '[' && strarr[i] == ']'
					|| first == '{' && strarr[i] == '}') {
				stack.pop();
			} 
		}
		
		if (stack.isEmpty()) {
			System.out.println("current string of parenthesis is valid " + str);
		} else {
			System.out.println("current string of parenthesis is not valid " + str);
		}
		
		}catch (Exception e) {
			System.out.println("given parentheses is not valid");
		}
		
	}
}
