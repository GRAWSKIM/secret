package com.hb.dto;

import java.util.Date;

public class Guest02Bean {
	private int sabun,pay,lv1,lv2,lv3;
	private String Name;
	private Date nalja;
	
	public Guest02Bean(){}
	public int getSabun() {
		return sabun;
	}public int getLv1() {
		return lv1;
	}public int getLv2() {
		return lv2;
	}public int getLv3() {
		return lv3;
	}public Date getNalja() {
		return nalja;
	}public String getName() {
		return Name;
	}public int getPay() {
		return pay;
	}public void setLv1(int lv1) {
		this.lv1 = lv1;
	}public void setLv2(int lv2) {
		this.lv2 = lv2;
	}public void setLv3(int lv3) {
		this.lv3 = lv3;
	}public void setNalja(Date nalja) {
		this.nalja = nalja;
	}public void setName(String name) {
		Name = name;
	}public void setPay(int pay) {
		this.pay = pay;
	}public void setSabun(int sabun) {
		this.sabun = sabun;
	}
}
