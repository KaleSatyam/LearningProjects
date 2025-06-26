package conn.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconn {

	public static Connection getc() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");  
	    	  conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/creditcard","root","");  
			
		}
		catch(Exception e)
		{
			System.out.println("Exception in connection"+e);
		}
		return conn;
		
	}
}
