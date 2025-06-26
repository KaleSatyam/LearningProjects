package com.dao;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hdutils.factoryprovider;
import com.model.Product;

public class productdao {

	public static int saveproduct(Product p) {
		
		Session session=factoryprovider.getfactory().getCurrentSession();
		Transaction tx=session.beginTransaction();
			Serializable id=session.save(p);
		tx.commit();
		session.close();
		
		return (Integer) id;
	
		
	}
	
}
