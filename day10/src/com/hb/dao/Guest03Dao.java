package com.hb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.dto.javaBeab;
import com.hb.util.MyOracle;

public class Guest03Dao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	public ArrayList<javaBeab> selectAll() throws ClassNotFoundException, SQLException{
		ArrayList<javaBeab> list= new ArrayList<javaBeab>();
		String sql ="select * from guest03";
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				javaBeab beab = new javaBeab();
				beab.setSabun(rs.getInt("sabun"));
				beab.setName(rs.getString("name"));
				beab.setDate(rs.getDate("nalja"));
				beab.setPay(rs.getInt("pay"));
				list.add(beab);
			}
		}finally{
			try{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
			}catch(Exception e){
				
			}
		}
		return list; 
	}
}
