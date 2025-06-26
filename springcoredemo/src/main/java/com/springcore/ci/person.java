package com.springcore.ci;

import java.util.List;

public class person {
	private String pname;
	private int pId;
	private Certi centi;
	private List<String> animals;
	
	
	public person(String pname, int pId,Certi centi,List animals ) {
		super();
		this.pname = pname;
		this.pId = pId;
		this.centi=centi;
		this.animals=animals;
	}
	@Override
	public String toString() {
		return this.pname +" : "+ this.pId+"{"+this.centi.name+"}"+" animals"+this.animals;
	}
	
	

}
