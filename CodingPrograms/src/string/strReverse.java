package string;

public class strReverse {

	public static void main(String[] args) {
		String str="Satyam";		//5
//		int i;
//		System.out.println("string is " +str);
//		char ch[]=new char[str.length()+1];			//	7
//		for(i=str.length()-1;i>=0;i--)			//4
//		{
//			ch[i]=str.charAt(i);			// 4<=str.charat(4)
//			System.out.print(ch[i]);
//		}
		
//		char[] st=str.toCharArray();
//		for(int i=st.length-1;i>=0;i--)
//		{
//			System.out.print(st[i]);
//		}
		
			String rev=new StringBuilder(str).reverse().toString();
			String rev2=new StringBuffer(str).reverse().toString();
			System.out.println(str+"      "+rev+"      "+rev2);
	}

}
