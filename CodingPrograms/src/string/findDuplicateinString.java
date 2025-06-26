package string;

public class findDuplicateinString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String s="I am Satyam";
		int count=0;
		
		for (int i = 0; i < s.length(); i++) {
			
			for(int j=i+1;j<s.length();j++) {
				if(s.charAt(i)==s.charAt(j) ) {
					count++;
					System.err.print(s.charAt(i)+" ");
					break;
				}
			}
			
		}
		
		System.out.println(count);
//		
//		 String str = "I am Satyam";
//	      char[] carray = str.toCharArray();
//	      System.out.println("The string is:" + str);
//	      System.out.print("Duplicate Characters in above string are: ");
//	      for (int i = 0; i < str.length(); i++) {
//	         for (int j = i + 1; j < str.length(); j++) {
//	            if (carray[i] == carray[j]) {
//	               System.out.print(carray[j] + " ");
//	               break;
//	            }
//	         }
//	      }

	}

}
