package samples;

 class bank
{
	int bno;
	String bname;
	String branch;
	
	public bank(int bno,String bname,String branch)
	{
	 super();
	 this.bno=bno;
	 this.bname=bname;
	 this.branch=branch;
	 
	}
}
 class customer extends bank
 {
	
 	int cid;
 	String cname;
 	String cadd;
 	
 	public customer(int bno,String bname,String branch,int cid,String cname,String cadd)
 	{
 	 super(bno,bname,branch);
 	 this.cid=cid;
 	 this.cname=cname;
 	 this.cadd=cadd;
 	 
 	}
 }

 class current extends customer
 {
	 int totalincome;
	 int taxpay=0;
	 
	 public current(int bno, String bname, String branch, int cid, String cname, String cadd,int totalincome) {
		super(bno, bname, branch, cid, cname, cadd);
		// TODO Auto-generated constructor stub
		this.totalincome=totalincome;
	}
	
  void show()
  {
	System.out.println("totalincome");  
	System.out.println(totalincome);
	 taxpay=totalincome/10;
	System.out.println("taxpay"+taxpay);
  }
 } 
 
 class saving extends customer
 {
	 int depositeamt;
	 int interest=0;
	 public saving(int bno, String bname, String branch, int cid, String cname, String cadd,int depositeamt) {
		super(bno, bname, branch, cid, cname, cadd);
		// TODO Auto-generated constructor stub
		this.depositeamt=depositeamt;
		
	}
	 
	
  void show2()
  {
	System.out.println("deposite");  
	System.out.println(depositeamt);
	 interest=depositeamt/5;
	System.out.println("interest"+interest);
  }
 } 
 
 
class hirarchy
{
	public static void main(String args[])
	{
		current c1=new current(11,"hdfc","nigdi",101,"abhi","pimpri",10000);
		saving s1=new saving(22,"fc","nigdi",101,"abhi","pimpri",10000);
		c1.show();
		s1.show2();
		
	}
}