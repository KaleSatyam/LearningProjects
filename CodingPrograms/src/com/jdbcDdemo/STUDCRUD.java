package com.jdbcDdemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class STUDCRUD {
	static Connection con=null;
	static Scanner sc=null;
	static {
		  try {
	    	  Class.forName("com.mysql.jdbc.Driver");  
	    	  con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/cogniDb","root","");  
		  }
		  catch (Exception e) {
			// TODO: handle exception
			  System.out.println("Ex:"+e);
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	  sc=new Scanner(System.in);
       insert();
		   view();
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
        	      Statement st=con.createStatement();
        	      String q="insert into stud values("+rno+",'"+nm+"','"+ad+"','"+mo+"')";
        	      st.executeUpdate(q);
        	      System.out.println("Data Insert suessfully....");
        	      
          }catch (Exception e) {
			// TODO: handle exception
        	  System.out.println("Ex:"+e);
	 }
	}
  public static void view()
  {
	  try {
    	      Statement st=con.createStatement();
    	    String q="select * from stud";
    	    ResultSet rs=st.executeQuery(q);
    	    while(rs.next())
    	    {
    	    	System.out.println(rs.getInt(1)+"\t "+rs.getString(2)+"\t "+rs.getString(3)+" \t"+rs.getString(4));
    	    	
    	    }
    	      
      }catch (Exception e) {
		// TODO: handle exception
    	  System.out.println("Ex:"+e);
  }
  }
}
