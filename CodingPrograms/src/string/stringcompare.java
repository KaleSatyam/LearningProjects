package string;

public class stringcompare {

	public static void main(String[] args) {
		
		String str1="Satyam";
		String str2=new String("Satyam");

//		if(str1.equalsIgnoreCase(str2))
//		{
//			System.out.println("String is equal");
//		}
//		else
//		{
//			System.out.println("String not equal");
//		}
		
//		for(int i=0;i<str1.length();i++)
//		{
//			if(str1.charAt(i)!=str2.charAt(i))
//			{
//				System.out.println("string is not equal");
//				break;
//			}
//			else
//			{
//				System.out.println("string is equal");
//				
//			}
//		}
		if(str1 == str2) //  compare both addresses and references
		{
			System.out.println("using == string equal");
			
		}else
		{
			System.out.println("using == string not equal");
		}
		
		
	if(str1.equals(str2)) //compare both of contents
		{
		System.out.println("using equals String is equal");
		}
		else
	{
		System.out.println("using equals String not equal");
	}
		

	}

}
