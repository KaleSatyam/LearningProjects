package com.arrays;


public class uniquearray
{

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub

				int a[]= {2,3,4,5,4,5,3,7};
				int count=0;
				int m=0,n=0;
				 System.out.println("Elements of  array: " );
			
			        for (int i = 0; i < a.length; i++) 
			        	{     
			            	System.out.print(a[i] + " ");    
			        	}    
			   	 System.out.println("\n \ntotal are  "+a.length);
			        
			        System.out.println("\n"+"unique elements of array");
			
			        for(int i=0;i<a.length;i++)
			{
					for(int j=i+1;j<a.length;j++)
					{
						if( a[i]==a[j])
						{
							count++;
						}		
					}
					if(count==0)
					{
						m++;
						System.out.print(a[i]+" ");
					}
					count=0;
			}
			        System.out.println("\n"+"total no of unique elements : "+m);
			       
//---------------------------------------------------for duplicate array
			        
			        System.out.println("\n"+"duplicate elements of array");
			        
			        for(int i=0;i<a.length;i++)
			        {
			        	for(int j=i+1;j<a.length;j++)
			        	{
			        		if((a[i]==a[j]))
			        		{
			        			n++;	
			        			System.out.print(a[j]+" ");
			        		}
			        	}
			        	
			        }
			        System.out.println("\n"+"total no of duplicate elements : "+n);
			        
			}
		
}
