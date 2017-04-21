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
				System.out.println("driver���ڿ� �Ǵ� ojdbc14.jar�� Ȯ���ؿ�");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("url,user,password Ȯ��");
				e.printStackTrace();
			}
		return conn;
	}
	
	// 1.�̱��� ���� ù����
//	public static OraDb conn =new OraDb();
	// ȣ���ؼ� null �� ���� �����ϸ� ����� �� ���°� ����
	
//	public static OraDb conn;
	// 2.�̱��� ���� �ι�°
//	public static void newInts(){
//		if(conn==null){//������ �޾Ƽ� null�� ���� ����Ǹ� �׋� ���ο� �ɷ� ȣ��
//		conn = new OraDb();}
//	}
	//3.�̱��� ����°
	//�ι��� ������ ���ĸ� �ٲ�
//	private static OraDb conn;
//	public static OraDb newInst(){
//		if(conn==null){
//		conn = new OraDb();
//		}
//		return conn;
//	}
//	private OraDb(){//��ü ���� ����}
	
}
