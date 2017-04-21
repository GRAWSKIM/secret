package com.hb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import com.hb.util.MyDb;
	

public class Guest04Dao {
	static Logger log= Logger.getLogger("com.hb.model.Guest04Dao");
	
	private static Connection conn;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	
	public Guest04Dao(){
//		driver = "oracle.jdbc.driver.OracleDriver";
		driver = "com.mysql.jdbc.Driver";
//		url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		url="jdbc:mysql://localhost:3306/testdb";
		user="scott";
		password="tiger";
//		user="root";
//		password="mysql";		
	}
	
	public static List selectAll() throws ClassNotFoundException, SQLException{
		String sql = "SELECT * FROM GUEST04";
		List list= new ArrayList<GuestDto>();
		
		try{
			conn=MyDb.getConnection(driver, url, user, password);
			
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				GuestDto dto=new GuestDto(
						rs.getInt("sabun"), 
						rs.getString("name"),  
						rs.getString("sub"), 
						rs.getDate("nalja"), 
						rs.getInt("pay")
						);
				list.add(dto);
				
//				list.add(new GuestDto(
//						rs.getInt("sabun"), 
//						rs.getString("name"),  
//						rs.getString("sub"), 
//						rs.getDate("nalja"), 
//						rs.getInt("pay")
//						));
				log.debug(dto);
			}
		}finally{
			closeAll();
		}
	
		return list;
	}


	private static void closeAll() throws SQLException {
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
		
	}

	public int insertOne(String name, String sub, int pay) throws SQLException, ClassNotFoundException {
		int result= 0;
		String sql = "insert into guest04 values (guest04_seq.nextval,?,?,sysdate,?)";
		try{
			conn=MyDb.getConnection(driver, url, user, password);
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2,sub);
			pstmt.setInt(3,pay);
			result=pstmt.executeUpdate();
			
		}finally{
			closeAll();
		}
		
		return result;
	}

	public GuestDto selectOne(int sabun) throws SQLException, ClassNotFoundException {
		String sql = "SELECT * FROM GUEST04 WHERE SABUN=?";
		GuestDto bean = new GuestDto();
		try{
			conn=MyDb.getConnection(driver, url, user, password);
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs!=null){				
				bean.setSabun(rs.getInt("sabun"));
				System.out.println("TEWST");
				bean.setName(rs.getString("name"));
				bean.setSub(rs.getString("sub"));
				bean.setNalja(rs.getDate("date"));
				bean.setPay(rs.getInt("pay"));
			}
		}finally{
			closeAll();
		}
		return bean;
	}
}
