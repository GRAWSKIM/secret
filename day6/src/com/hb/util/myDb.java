package com.hb.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class myDb {
	private static Connection conn;
	private static String driver="oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static String user = "scott";
	private static String password = "tiger";
	
	private myDb(){}

	public static Connection getConnection(){
		
		try {
			if(conn==null||conn.isClosed()){
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
			
			}	
			} catch (SQLException e){ e.printStackTrace();
			} catch (ClassNotFoundException e) {e.printStackTrace();
			} finally {
				
			}
		return conn;
	}
}
