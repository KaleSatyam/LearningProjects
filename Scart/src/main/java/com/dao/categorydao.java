package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.hql.internal.ast.tree.SessionFactoryAwareNode;

import com.hdutils.factoryprovider;
import com.model.Category;

public class categorydao {


		private static final String Category = null;
		//saves category to db
	public static int addcategory(Category ct) {
		int catid=(Integer) null;
		try {
		Session session=factoryprovider.getfactory().openSession();
		Transaction tx=session.beginTransaction();
		catid=(Integer)session.save(ct);
		tx.commit();
		session.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return catid;	
	}
	
	public static List<Category>  getcategory()
	{
		Session session=factoryprovider.getfactory().openSession();
		Query query=session.createQuery("from Category");
		List<Category> ct=query.list();
		
		session.close();
		
		return ct;
		
	}
	public static Category categorybyid(int cid)
	{
		Category cat=null;
	
		try {
			 Session session=factoryprovider.getfactory().openSession();
			 	cat=session.get(Category.class, cid);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cat;
		
	}
			

}
