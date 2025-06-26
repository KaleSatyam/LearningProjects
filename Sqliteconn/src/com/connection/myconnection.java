package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class myconnection {
	

	
	public static Connection getconn()
	{
		Connection conn=null;
		try {
			Class.forName("org.sqlite.JDBC");
			
			conn=DriverManager.getConnection("jdbc:sqlite:studentDB.db");
			
			System.out.println(conn   +"         connection successfully");
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return conn;
	}
	
	public static  void create_database() 
	{
		
		 Connection conn=null;
		 String url = "jdbc:sqlite:studentDB.db";  
		   
	        try {  
	        	
	        	Class.forName("org.sqlite.JDBC");
	        	conn = DriverManager.getConnection(url);  
	            if (conn != null) {  
	                System.out.println("connection  is " +  conn );  
	                System.out.println("A new database has been created.");  
	            }  
	   
	        } catch (Exception e) {  
	            System.out.println(e.getMessage());  
	        } 
	        
		}
	
	public static void create_table()
	{          
	        // SQL statement for creating a new table  
	        String sql = "create table student(name varchar(20) primary key,roll_no int ,email varchar(30));"; 
	          
	        try{  
	            Connection conn = getconn();
	            Statement stmt = conn.createStatement();  
	            boolean execute = stmt.execute(sql);  
	            
	        } catch (SQLException e) {  
	            System.out.println(e.getMessage());  
	        }  
		
	}
	
	public static void insert_values(String name,int roll_no,String email)
	{
		
		String sql = "insert into student(name,roll_no,email) values(?,?,?);";  
		   
        try{  
            Connection conn = getconn();  
            PreparedStatement pstmt = conn.prepareStatement(sql);  
            pstmt.setString(1, name);  
            pstmt.setInt(2,roll_no );  
            pstmt.setString(3, email);
            pstmt.executeUpdate();  
        } catch (SQLException e) {  
            System.out.println(e.getMessage());  
        }  
		
	}
	
	public static void getall()
	{
		String sql = "SELECT * FROM student";  
        
        try {  
            Connection conn = getconn();
            Statement stmt  = conn.createStatement();  
            ResultSet rs    = stmt.executeQuery(sql);  
              
            // loop through the result set  
            while (rs.next()) {  
                System.out.println(rs.getInt("roll_no") +  "\t" +   
                                   rs.getString("name") + "\t" +  
                                   rs.getString("email"));  
            }  
        } catch (SQLException e) {  
            System.out.println(e.getMessage());  
        }  
	}
}
