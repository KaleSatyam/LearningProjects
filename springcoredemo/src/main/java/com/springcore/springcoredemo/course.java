package com.springcore.springcoredemo;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;



public class course {
	private List<String> names;
	private Set<String>  names1;
	private Map<String,String> names2;
	private Properties prop;
	
	
	public Properties getProp() {
		return prop;
	}
	public void setProp(Properties prop) {
		this.prop = prop;
	}
	public List<String> getNames() {
		return names;
	}
	public void setNames(List<String> names) {
		this.names = names;
	}
	public Set<String> getNames1() {
		return names1;
	}
	public void setNames1(Set<String> names1) {
		this.names1 = names1;
	}
	public Map<String, String> getNames2() {
		return names2;
	}
	public void setNames2(Map<String, String> names2) {
		this.names2 = names2;
	}
	public course(List<String> names, Set<String> names1, Map<String, String> names2,Properties prop) {
		super();
		this.names = names;
		this.names1 = names1;
		this.names2 = names2;
		this.prop=prop;
	}
	public course() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "course [names=" + names + ", names1=" + names1 + ", names2=" + names2 + ",prop=" + prop +"]";
	}
	

}
