package com.hb.dto;

import java.util.Date;

public class Guest01Bean {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public Guest01Bean(){}
	
	public Date getNalja() {
		return nalja;
	}public String getName() {
		return name;
	}public int getPay() {
		return pay;
	}public int getSabun() {
		return sabun;
	}public void setNalja(Date nalja) {
		this.nalja = nalja;
	}public void setName(String name) {
		this.name = name;
	}public void setPay(int pay) {
		this.pay = pay;
	}public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	
	
}
