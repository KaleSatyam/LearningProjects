package string;

public class checkStringContainsDigit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str="123a";
		boolean checkString = checkString(str);
		if(checkString) {
			System.out.println("given string  is contains words");
		}else {
			System.out.println("given string is only digit");
		}

	}

	private static boolean checkString(String str) {
		// TODO Auto-generated method stub
		boolean b=false;
		for(int i=0;i<str.length();i++) {
			if(!Character.isDigit(str.charAt(i))) {
				b=true;
				break;
			}
		}
		return b;
	}
	
	

}
