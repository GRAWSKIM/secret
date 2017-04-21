package com.hb.pm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OraDb {
	private OraDb(){}
	private static String driver = "oracle.jdbc.driver.OracleDriver"; 
	private static String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static String user = "scott";
	private static String password = "tiger";
	private static Connection conn;
	
	public static Connection getConnection(){
		
			try {
				if(conn == null || conn.isClosed()){
					
				Class.forName(driver);
				conn= DriverManager.getConnection(url, user, password);
				}
				
			} catch (ClassNotFoundException e) {
				System.out.println("driver문자열 또는 ojdbc14.jar을 확인해요");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("url,user,password 확인");
				e.printStackTrace();
			}
		return conn;
	}
	
	// 1.싱글톤 패턴 첫번쨰
//	public static OraDb conn =new OraDb();
	// 호출해서 null 로 값을 변경하면 사용할 수 없는게 문제
	
//	public static OraDb conn;
	// 2.싱글톤 패턴 두번째
//	public static void newInts(){
//		if(conn==null){//조건을 달아서 null로 값이 변경되면 그떄 새로운 걸로 호출
//		conn = new OraDb();}
//	}
	//3.싱글톤 세번째
	//두번쨰 패턴을 형식만 바꿈
//	private static OraDb conn;
//	public static OraDb newInst(){
//		if(conn==null){
//		conn = new OraDb();
//		}
//		return conn;
//	}
//	private OraDb(){//객체 생성 제한}
	
}
