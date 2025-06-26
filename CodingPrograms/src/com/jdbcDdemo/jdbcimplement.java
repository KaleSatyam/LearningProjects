package com.jdbcDdemo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;



public class jdbcimplement {
	static Connection conn=null;
	static Scanner sc=null;
	
		static
		{
			 try {
		    	  Class.forName("com.mysql.jdbc.Driver");  
		    	  conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/cogniDb","root","");  
			  }
			  catch (Exception e) {
				// TODO: handle exception
				  System.out.println("Ex:"+e);
			}
		}

	public static void main(String[] args) throws SQLException 
	{
	sc=new Scanner(System.in);	
	System.out.println("Enter your choice\n 1. Insert \n 2.View \n 3.delete \n 4.update");
		String ch=sc.next();
		switch(ch)
		{
		case "1" : insert();
		break;
		case "2" : view();
		break;
		case "3" : delete();
		break;
		case "4" : update();
		break;
		}
			sc.close();
	}

	private static void update()
	{
			// TODO Auto-generated method stub
			try
			{
				System.out.println("Enter name to update");
			String name=sc.next();
			System.out.println("Enter roll  of table");
			int roll=sc.nextInt();
				Statement stmt=conn.createStatement();
				String q=("UPDATE stud SET nm='"+name+"'Where rno="+roll);
						stmt.executeUpdate(q);
						System.out.println("name of "+roll+"roll no is updated");
						
			}catch(Exception e)
			{
				System.out.println("Exception in delete"+e);
			}
		
		}
private static void delete()
{
		// TODO Auto-generated method stub
		try
		{
			System.out.println("Enter roll no to delete");
			int	Rno=sc.nextInt();
			Statement stmt=conn.createStatement();
			String q=("DELETE FROM stud  WHERE rno="+Rno) ;
					stmt.executeUpdate(q);
					System.out.println("roll no"+Rno+"deleted successfully");
					
		}catch(Exception e)
		{
			System.out.println("Exception in delete"+e);
		}
	
	}

	private static void view()  {
		// TODO Auto-generated method stub
		try 
		{
		  Statement stmt=conn.createStatement();
	String q2="select * from stud";
	 ResultSet rs=stmt.executeQuery(q2);
			while(rs.next())
			{
				System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4));
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception in view"+e);
		}
	}

	private static void insert() {
		// TODO Auto-generated method stub
		
		try {
			
					System.out.println("Enter Rno");
					int rno=sc.nextInt();
	      	      	System.out.println("Enter Name");
	      	      	String nm=sc.next();
	      	      	System.out.println("Enter Address");
	      	      	String ad=sc.next();
	      	      	System.out.println("Enter Mob");
	      	      	String mo=sc.next();
					Statement stmt=conn.createStatement();
					String q="insert into stud values("+rno+",'"+nm+"','"+ad+"','"+mo+"')";
					  stmt.executeUpdate(q);
					  System.out.println("Data Insert suessfully....");			
		}
		catch(Exception e)
		{
			System.out.println("Exception in insert"+e);
		}
	
	}	
}
