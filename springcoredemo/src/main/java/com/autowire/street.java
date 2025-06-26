package com.autowire;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class street {
	
	@Autowired
	@Qualifier("addr")
	address addr;

	
	


	@Override
	public String toString() {
		return "street [addr=" + addr + "]";
	}


	public street() {
		super();
		// TODO Auto-generated constructor stub
	} 

	
}
