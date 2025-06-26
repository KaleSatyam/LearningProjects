package com.casestudy;

public class strrepeatcheck {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

			String str="radfa";
			System.out.println(str);
			strrepeatcheck sc=new strrepeatcheck();
//			sc.strcheck(str);
			System.out.println(sc.strcheck(str));
			
	}

	public boolean strcheck(String str)
	{
			for(int i=0;i<str.length();i++)
			{
				for(int j=i+1;j<str.length();j++)
				{
					if(str.charAt(i)==str.charAt(j))
					{
						return true;
					}
				}
				
			}
		
		return false;
		
	}
}
