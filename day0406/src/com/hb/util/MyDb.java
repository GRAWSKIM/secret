package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDb {
	private static Connection conn;
	private static String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String user="scott";
	private static String password="tiger";
	
	private MyDb(){}
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		if(conn == null||conn.isClosed()){
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			
			
		}
		
		return conn;
	}
}
