package com.spring.initdestroy;

public class vadapaav {
	private double price;
	private int plates;
	
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPlates() {
		return plates;
	}
	public void setPlates(int plates) {
		this.plates = plates;
	}
	
	public vadapaav()
	{
		System.out.println("in price and plates order");
	}

	@Override
	public String toString() {
		return "vadapaav [price=" + price + ", plates=" + plates + "]";
	}
	
	public void init()
	{
		System.out.println("in init method");
	}
	public void destroy()
	{
		System.out.println("in destroy method");
		
	}
	
	
	
	

}
