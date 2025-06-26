package com.dao;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hdutils.factoryprovider;
import com.model.User;

public class userdao {

	public static int saveuser(User user) {
		// TODO Auto-generated method stub
	Session session	=factoryprovider.getfactory().openSession();
	Transaction tx=session.beginTransaction();
		int uid=(Integer) session.save(user);
		
			tx.commit();
		session.close();
		return uid;
	}
	 @SuppressWarnings("deprecation")
	public static User getuserbyemailandpsssword(String email,String password)
	 {
		 User user=null;
		 try {
			 String query="from User where userEmail=: e and userPassword=: p";
			 Session session=factoryprovider.getfactory().openSession();
			 Query q=session.createQuery(query);
			 q.setParameter("e", email);
			 q.setParameter("p", password);
			user=(User)q.uniqueResult();
				
			session.close();
		} catch (Exception e) {

			e.printStackTrace();  
		}
		 
		 
		 return user;
		 
	 }
	

}
