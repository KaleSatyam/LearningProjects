package com.springcore.standalone.collection;

import java.util.List;

public class address {
	
	List<String> fullAddress;

	public List<String> getFullAddress() {
		return fullAddress;
	}

	public void setFullAddress(List<String> fullAddress) {
		this.fullAddress = fullAddress;
	}

	

	public address() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "address [fullAddress=" + fullAddress + "]";
	}
	

}
