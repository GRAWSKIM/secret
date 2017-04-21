package com.hb.model;

import java.util.Date;

public class GuestDto {
	private int sabun,pay;
	private Date nalja;
	private String name,sub;
	
	public GuestDto(){
		
	}	
	public GuestDto(int sabun,String name,String sub,Date nalja,int pay){
		this.sabun=sabun;
		this.name= name;
		this.sub= sub;
		this.nalja = nalja;
		this.pay = pay;
	}
	
	public int getSabun() {
		return sabun;
	}
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public Date getNalja() {
		return nalja;
	}
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	
}
