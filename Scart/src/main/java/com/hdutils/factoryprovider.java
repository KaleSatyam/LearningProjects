package com.hdutils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class factoryprovider {
	private static SessionFactory session;
	public static SessionFactory getfactory()
	{
		try {
			if(session==null)
			{
			session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return session;
	}

}
