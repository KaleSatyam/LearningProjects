package string;

public class alphascii {

	public static void main(String[] args) {
		 char c='a';
		 int  Z=c;
		 
		 System.out.println(Z);
		 System.out.println("****************capital letters***************");
		 for(char ch='A';ch<='Z';ch++)
		 {
			 int A1=ch;
			System.out.println("("+A1+","+ch+")");
			 
		 }
		 System.out.println();
		for(char ch='A' ; ch<='Z';ch++)
		{
			System.out.print(ch+" ");
		}
		System.out.println();
		 System.out.println("****************small letters***************");
		for(char ch='a';ch<='z';ch++)
		{
			int a=ch;
			System.out.println("("+a+","+ch+")");
		}
		for(char ch='a';ch<='z';ch++)
		{
		System.out.print(ch+" ");
		}
	}

}
