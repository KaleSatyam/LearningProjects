package com.spring.initdestroy;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class pepsi implements InitializingBean,DisposableBean{
	private double price;
	private int count;
	
	
	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public pepsi() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "pepsi [price=" + price + ", count=" + count + "]";
	}


	public void destroy() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("i am going to destroy ");
	}


	public void afterPropertiesSet() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("i am going to initialiazing");
	}
	
	
	

}
