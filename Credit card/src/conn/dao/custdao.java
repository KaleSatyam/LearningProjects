package conn.dao;

import java.util.List;



import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import conn.dbconn.dbconn;
import conn.model.customer;
import conn.model.statement;

public class custdao {

	

	public static int checklogin(int ccno, String pass) {
		// TODO Auto-generated method stub
		int f=0;
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql="Select * from cust where cc="+ccno+" and upass='"+pass+"' ";
			ResultSet rs=stmt.executeQuery(sql);
			while (rs.next())
			{
				f=1;
			}
		}
		catch(Exception e)
		{
			System.out.println(" excepion in checklogin");
		}
		return f;
	}

	public static int register(String unm, String umob, String uadd, String uemail, String upass, int cc) {
		// TODO Auto-generated method stub
		int a=0;
		try
		{
		Connection conn=dbconn.getc();
		Statement stmt=conn.createStatement();
		String sql="insert into cust values( '"+unm+"','"+umob+"','"+uadd+"','"+uemail+"','"+upass+"',"+cc+" )";
		stmt.executeUpdate(sql);
		}
		catch(Exception e)
		{
			a=1;
			System.out.println("Exception in register"+e);
		}
		return a;
	}

	public static int getbal(int ccno) {
		// TODO Auto-generated method stub
		int f=0;
		try {
		
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql="select * from ccamount where ccno="+ccno+" ";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				f=rs.getInt(2);
			}
		
		} 	catch(Exception e)
		{
			System.out.println("exception in getbal"+e);
		}
		return f;
	}

	public static void activatecc(int ccno, int amt) {
		// TODO Auto-generated method stub
		try {
			
		Connection conn=dbconn.getc();
		Statement stmt=conn.createStatement();
		String sql="insert into ccamount values( "+ccno+","+amt+" )";
		stmt.executeUpdate(sql);
		System.out.println("Amount inserted");
		addreward(ccno,0);
		}catch(Exception e)
		{
			System.out.println("Exception in activatecc:"+e);
		}
	}
	
	

	private static void addreward(int ccno, int i) {
		// TODO Auto-generated method stub
			try {
				Connection conn=dbconn.getc();
				Statement stmt=conn.createStatement();
				stmt.executeUpdate("insert into rewardpoint values("+ccno+","+i+")");	
			}catch(Exception e)
			{
				System.out.println("Exception in addreward:"+e);
			}
		
		
	}

	
	
	public static void update(int nnamt, int ccno) {
		// TODO Auto-generated method stub
		
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql=("update ccamount set ccamt="+nnamt+" where ccno="+ccno+" ");
			stmt.executeUpdate(sql);
			}catch(Exception e)
		{
			System.out.println("Exception in update:"+e );
		}
	}

	public static int deposite(int damt, int ccno) {
		// TODO Auto-generated method stub
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql=("update ccamount set ccamt="+damt+" where ccno="+ccno+" ");
			stmt.executeUpdate(sql);
			}catch(Exception e)
		{
			System.out.println("Exception in deposite:"+e );
		}
		return damt;
	}

	

	public static int getreward(int ccno) {
		int f=0;
		try {
		
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql="select * from rewardpoint where ccno="+ccno+" ";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				f=rs.getInt(2);
			}
		
		} 	catch(Exception e)
		{
			System.out.println("exception in getreward"+e);
		}
		return f;
	}

	public static void updaterwd(int ccno, int nrwd) {
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			stmt.executeUpdate("update rewardpoint set reward="+nrwd+" where ccno="+ccno+" ");
		}
		catch(Exception e)
		{
			System.out.println("Exception in updaterwd:"+e);
		}
	}

	public static void updatebal(int ccno, int b) {
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			stmt.executeUpdate("update ccamount set ccamt="+b+" where ccno="+ccno+" ");
		}
		catch(Exception e)
		{
			System.out.println("Exception in updatebal:"+e);
		}
		
	}

	public static void updaterwd2(int ccno, int ramt2) {
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			stmt.executeUpdate("update rewardpoint set reward="+ramt2+" where ccno="+ccno+" ");
		}
		catch(Exception e)
		{
			System.out.println("Exception in updaterwd2:"+e);
		}
		}

	public static void createstatement(int ccno, String  dt, int amount, String type, int reward) {
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			stmt.executeUpdate("insert into statement values(null, '"+dt+"',"+amount+",'"+type+"',"+reward+","+ccno+")");
			
		}catch(Exception e)
		{
			System.out.println("Exception in createstatement :"+e);
		}	
	}

	public static List<statement> viewstmt() {
		List<statement>stamt=new ArrayList<statement>();
		try {
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql=("select * from statement " );
			 ResultSet rs=stmt.executeQuery(sql);
				while(rs.next())
				{
					statement st=new statement();
					st.setDate(rs.getString(2));
					st.setAmt((rs.getInt(3)));
					st.setType((rs.getString(4)));
					st.setReward((rs.getInt(5)));
					st.setCcno(rs.getInt(6));
					stamt.add(st);
					//System.out.println("\t"+rs.getString(1)+"\t"+rs.getInt(2)+" \t"+rs.getString(3)+"\t"+rs.getInt(4)+"\t"+rs.getInt(5));
				}
			
			}catch(Exception e)
				{
					System.out.println("Exception in viewstmt"+e);
				}
		return stamt;

	}

	public static List<customer> showuser() {
		List<customer>cust=new ArrayList<customer>();
	try {
		Connection conn=dbconn.getc();
		Statement stmt=conn.createStatement();
		String sql=("select * from cust " );
		 ResultSet rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				customer c=new customer();
				
				c.setCust_name(rs.getString(1));
				c.setCust_mob(rs.getString(2));
				c.setCust_add(rs.getString(3));
				c.setCust_email(rs.getString(4));
				c.setCust_pass(rs.getString(5));
				c.setCust_ccno(rs.getInt(6));
				cust.add(c);
				//System.out.println("\t"+rs.getString(1)+"\t"+rs.getString(2)+" \t"+rs.getString(3)+"\t"+rs.getString(4)+"\t"+rs.getInt(6));
			}
		}catch(Exception e)
			{
				System.out.println("Exception in showuser"+e);
			}
	return cust;
}

	public static String viewname(int ccno) {

		String name=" ";
		try
		{
			Connection conn=dbconn.getc();
			Statement stmt=conn.createStatement();
			String sql="select unm from cust where cc="+ccno+ " ";
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next())
	{
		name=rs.getString(1);
	}
		}
		catch(Exception e)
		{
			System.out.println(" excepion in checklogin");
		}
		return name;
		
	}

public static void records() {

	try
	{
		Connection conn=dbconn.getc();
		Statement stmt=conn.createStatement();
		String sql="SELECT month(date),sum(amount) from statement where type='debit' and month(date) group by month(date) ";
		ResultSet rs=stmt.executeQuery(sql);
		System.out.print("month(date) \tsum(amt)");
		System.out.println();
		while(rs.next())
		{
	
			System.out.println("\t"+rs.getInt(1)+"\t"+rs.getInt(2));
		}
	}
	catch(Exception e)
	{
		System.out.println("Exception in records"+e);
	}
	

}

public static void stmt(String sdt, String edt) {
	try
	{
		Connection conn=dbconn.getc();
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT * from statement WHERE date BETWEEN  ' "+sdt+" ' and ' "+edt+" '  ");
		while(rs.next())
		{
		System.out.println("\t"+rs.getString(2)+"\t"+rs.getInt(3)+"\t"+"\t"+rs.getString(4)+"\t"+rs.getInt(5));
		}
		}catch(Exception e)
	{
		System.out.println("Exception  in  stmt"+e);
	}
	
}

}