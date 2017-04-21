package com.hb.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import oracle.jdbc.driver.OracleDriver;

public class OraDb {
	private static Connection conn;
	private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static String user = "scott";
	private static String password = "tiger";
	private OraDb(){
		
	}
	public static Connection getConnection(){
		try {
			if(conn == null||conn.isClosed()){
				DriverManager.registerDriver(new OracleDriver());
				conn = DriverManager.getConnection(url, user, password);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
}
