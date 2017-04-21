package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDb {
	private static Connection conn;
	
	private MyDb() {
		// TODO Auto-generated constructor stub
	}
	public static Connection getConnection(String driver,String url,String user,String password) throws SQLException, ClassNotFoundException{
		
		if(conn==null||conn.isClosed()){
			
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,password);
		}
		
		return conn;
	}
}
