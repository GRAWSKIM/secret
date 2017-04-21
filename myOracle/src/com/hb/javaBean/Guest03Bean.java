package com.hb.javaBean;

import java.util.Date;

public class Guest03Bean {
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	
	public Guest03Bean(){}
	public int getSabun() {
		return sabun;
	}public Date getNalja() {
		return nalja;
	}public String getName() {
		return name;
	}public int getPay() {
		return pay;
	}public void setSabun(int sabun) {
		this.sabun = sabun;
	}public void setNalja(Date nalja) {
		this.nalja = nalja;
	}public void setPay(int pay) {
		this.pay = pay;
	}public void setName(String name) {
		this.name = name;
	}
}
