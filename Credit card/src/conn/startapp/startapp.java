package conn.startapp;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Scanner;
import conn.dao.custdao;
import conn.model.statement;
import conn.model.customer;


public class startapp 
{
			static int rew;
			static Scanner sc=null;
			
	public static void main(String[] args)
	{
		
					sc=new Scanner(System.in);
					System.out.println("Enter your choice :  \n1.Admin\n2.User");
					String ch=sc.next();
					if(ch.equals("1"))
					{
						adminop();
					}
					else
					{
						userop();
						
					}
	}

	private static void adminop()
	{
		// TODO Auto-generated method stub	
		System.out.println("Enter Admin username");
		String anm=sc.next();
		System.out.println("Enter Admin password");
		String apass=sc.next();
		if(anm.equals("admin") && apass.equals("admin"))
		{
			int ccno = 0;
			System.out.println("login success");
			int ch1=0;
			while(ch1<4)
			{
				System.out.println("1.Activate user");
				System.out.println("2.View user");
				System.out.println("3.Records");
				System.out.println("4.Exit");
				System.out.println("Enter your choice");
				ch1=sc.nextInt();
				switch(ch1)
				{
				case 1:
							System.out.println("Enter Credit card no"); 
							ccno=sc.nextInt();
							System.out.println("Enter amt");
							int amt=sc.nextInt();
							custdao.activatecc(ccno,amt);
					break;
				case 2:
							List<customer>cust=custdao.showuser();
						//	custdao.showuser();
							
							for(customer c:cust)
								System.out.println("\t"+c.getCust_name()+" \t"+c.getCust_mob()+"\t "+c.getCust_add()+"\t "+c.getCust_email()+"\t"+c.getCust_pass()+"\t "+c.getCust_ccno());
					break;
				case 3:
					
							custdao.records();		
						//	System.out.println(f);
							
					break;
				case 4:
					break;
					
				}
			}
		}
		else
		{
			System.out.println("Login fail");
		
		}
	}

	private static void userop() 
	{
	
		// TODO Auto-generated method stub
		System.out.println("Enter your choice :  \n1.Login\n2.Register");
		String ch=sc.next();
		if(ch.equals("1"))
		{
			System.out.println("Enter Credit card no");
			int ccno=sc.nextInt();
			System.out.println("Enter password");
			String pass=sc.next();
			int f=custdao.checklogin(ccno,pass);
			if(f==0)
			{
				System.out.println("Login fail ");
			}
			else
			{
				int ch1=0;
				while(ch1<6)
				{
				System.out.println("Welcome :"+ccno+" "+custdao.viewname(ccno));
				System.out.println("User menu");
				System.out.println("1.Check balance \n2.Withdraw amount \n3.Deposite amt \n4.Rewards\n5.Statement \n6.Exit");
				System.out.println("Enter your choice");
					ch1=sc.nextInt();
			
					switch(ch1)
					{
				
					case 1:
						int bal=custdao.getbal(ccno);
						System.out.println("your balance is : "+bal);
						break;
						
					case 2:
								System.out.println("Enter the amount to withdraw");  
								 int wamt=sc.nextInt();
								 int oamt=custdao.getbal(ccno);
									if(wamt>oamt)
									{
										System.out.println("Insuffitient balance.....");
									}
									else
									{
										int a=custdao.getbal(ccno);
										
										System.out.println(" Do you want to use reward amount");
										System.out.println("1.Yes");
										System.out.println("2.no");
										int ch11=sc.nextInt();
										
										if(ch11==1)
										{			
											int ramt=custdao.getreward(ccno); 			//100
											int	nramt=wamt-ramt;   							//6000-100=5900
											int nramt2=ramt-ramt;								//100-100=0
											custdao.updaterwd2(ccno,nramt2);
											System.out.println("Your withdraw amount is :"+nramt);
											
											int b=a-nramt;
											custdao.updatebal(ccno,b);
											
											System.out.println("Amount withdraw succesfully.....");
											System.out.println("Your Balance is : " +custdao.getbal(ccno));	
																												
											if(nramt>=5000)
											{  
											rew=nramt/50;
											int prwd=custdao.getreward(ccno);
												int nrwd= prwd+rew;
											custdao.updaterwd(ccno,nrwd);
											}
											int reward=custdao.getreward(ccno);
											int amount=nramt;
											String type="debit";
											String pattern="YYYY-MM-dd";
											String dt=new SimpleDateFormat(pattern).format(new Date());
											custdao.createstatement(ccno,dt,amount,type,reward);
									}
										else
										{
											
											int  nnamt=oamt-wamt;
											custdao.update(nnamt, ccno);
											System.out.println("Amount withdraw successfully.....");
													
											if(wamt>=5000)
											{  
											rew=wamt/50;
											int prwd=custdao.getreward(ccno);
											int nrwd= prwd+rew;
											custdao.updaterwd(ccno,nrwd);	
											}
											
											int reward=custdao.getreward(ccno);
											int amount=wamt;
											String type="debit";
											String pattern="YYYY-MM-dd";
											String dt=new SimpleDateFormat(pattern).format(new Date());
											
											custdao.createstatement(ccno,dt,amount,type,reward);
											
											
										}	
										
								}
						break;
								
					case 3:
									System.out.println("Enter amount to deposite");
									int damt=sc.nextInt();
									int camt=damt+custdao.getbal(ccno);
									custdao.deposite(camt,ccno);
									System.out.println("Amount deposited successfully");
									System.out.println("Your Amount is"+camt);
									
									
									int reward=custdao.getreward(ccno);
									int amount=damt;
									String type="credit";
									String pattern="YYYY-MM-dd";
									String dt=new SimpleDateFormat(pattern).format(new Date());
									custdao.createstatement(ccno,dt,amount,type,reward);
						break;
						
					case 4:	
									int prwd=custdao.getreward(ccno);
									System.out.println("Your reward are :"+prwd);
									break;
						
					case 5:
								System.out.println("Enter start date");
								String sdt=sc.next();
								System.out.println("Enter end date");
								String edt=sc.next();
								custdao.stmt(sdt,edt);
								List<statement> stamt=custdao.viewstmt();
							
								for(statement ss:stamt)
									System.out.println("\t"+ss.getCcno()+" \t"+ss.getDate()+"\t"+ss.getAmt()+" \t"+ss.getType()+" \t"+ss.getReward());
						break;
						
					case 6:
						break;
					}
				}
			}
		}
		else
		{
			System.out.println("Enter name");
			String unm=sc.next();
			System.out.println("Enter Mob");
			String umob=sc.next();
			System.out.println("Enter Address");
			String  uadd=sc.next();
			System.out.println("Enter Email");
			String uemail=sc.next();
			System.out.println("Enter password");
			String upass=sc.next();
			System.out.println("Enter Card no");
			int cc=sc.nextInt();
			int a=custdao.register(unm,umob,uadd,uemail,upass,cc);
			if(a==1)
			{ 
			System.out.println("Register failed");
			}
			else
			{
				System.out.println("Register sucessfully");
			}
			}
	}
	
} 
