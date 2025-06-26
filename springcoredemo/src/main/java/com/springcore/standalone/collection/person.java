package com.springcore.standalone.collection;

import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;

public class person {
	List<String> friends;
	@Autowired
	List<address> address;
	Map<String,Integer> fee;
	Properties prop;
	
	public Properties getProp() {
		return prop;
	}


	public void setProp(Properties prop) {
		this.prop = prop;
	}


	public Map<String, Integer> getFee() {
		return fee;
	}


	public void setFee(Map<String, Integer> fee) {
		this.fee = fee;
	}


	public List<String> getFriends() {
		return friends;
	}
	

	public List<address> getAddress() {
		return address;
	}


	public void setAddress(List<address> address) {
		this.address = address;
	}


	public void setFriends(List<String> friends) {
		this.friends = friends;
	}

	
	

	

	
	
	
}
