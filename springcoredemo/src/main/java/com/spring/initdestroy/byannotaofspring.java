package com.spring.initdestroy;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;





public class byannotaofspring {
	
	int noofbooks;

	public int getNoofbooks() {
		return noofbooks;
	}

	public void setNoofbooks(int noofbooks) {
		this.noofbooks = noofbooks;
	}

	public byannotaofspring() {
		super();
	}

	@Override
	public String toString() {
		return "byannotaofspring [noofbooks=" + noofbooks + "]";
	}
	
	// we are going to add init and destroy methods by annotation
//	 @PostConstruct and @PreDestroy annotations are part of Java EE. And since Java 
//	EE has been deprecated in Java 9 and removed in Java 11 we
//	have to add an additional dependency to use these annotations:
	@PostConstruct
	public void init()
	{
		System.out.println("in init");
	}
	@PreDestroy
	public void destroy() {
		System.out.println("in destrot");
	}
}

