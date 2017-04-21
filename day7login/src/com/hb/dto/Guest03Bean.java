package com.hb.dto;

import java.sql.Date;


public class Guest03Bean {
	private int sabun,pay;
	private String name;
	private Date nalja;
	
	public Guest03Bean(){}
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
