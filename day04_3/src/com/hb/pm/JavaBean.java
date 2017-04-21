package com.hb.pm;

import java.util.Date;

public class JavaBean {
	//getter&setter
	//java:javabean
	//web:dto(data transfer object)
	//framework:Vo(value Object)
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;
	public JavaBean(){
		
	}
	public void setsabun(int sabun){
		this.sabun=sabun;
	}
	public void setname(String name){
		this.name=name;
	}
	public void setNalja(Date nalja){
		this.nalja=nalja;
	}
	
	public int getsabun(){
		return sabun;
	}
	
	public void setPay(int pay) {
		this.pay = pay;
	}
	public Date getNalja() {
		return nalja;
	}
	public String getName() {
		return name;
	}public int getPay() {
		return pay;
	}
}
