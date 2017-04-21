package com.hb.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Guest01Dao {
	private Connection conn;
	private ResultSet rs;
	private Statement stmt;
	private PreparedStatement pstmt;
	
	
	public int selectCnt(String keyword){
		int cnt = 0;
		String sql="select count(*) as cnt from guest01 where name like '?'";
		conn = OraDb.getConnection();
		try {
			pstmt= conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			pstmt.setString(1, "%"+keyword+"%");
			if(rs.next()){
				cnt=rs.getInt("cnt"); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
		return cnt;
	}
	
	public ArrayList<Guest01Bean> selectAll(String keword,int page,int viewcnt){
		ArrayList<Guest01Bean> list = new ArrayList<Guest01Bean>();
		int pStart=(page-1)*viewcnt+1;
		int pEnd=pStart+viewcnt-1;
		String sql="select * from ";
		sql+="(select rownum as rn, A.sabun, A.name, A.nalja, A.pay from ";
		sql+="(select * from guest01 where name like '%"+keword+"%' order by sabun desc)A )B ";
		sql+="where B.rn>="+pStart+" and B.rn<="+pEnd;
		
		conn=OraDb.getConnection();
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Guest01Bean bean = new Guest01Bean();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
		public ArrayList<Guest01Bean> selectAll(String search,String keyword){
			ArrayList<Guest01Bean> list = new ArrayList<Guest01Bean>();
			search = search.trim();
			String sql = "select * from guest01 where "+keyword+" like '%"+search+"%' order by sabun";
			conn = OraDb.getConnection();
				
				try {
					stmt= conn.createStatement();
					rs = stmt.executeQuery(sql);
					while(rs.next()){
						Guest01Bean bean = new Guest01Bean();
						bean.setSabun(rs.getInt("sabun"));
						bean.setName(rs.getString("name"));
						bean.setNalja(rs.getDate("nalja"));
						bean.setPay(rs.getInt("pay"));
						list.add(bean);
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally{
					
					try {
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		}
				
			return list;
		}
		public ArrayList<Guest01Bean> selectAll(){
			String sql = "select * from guest01 order by sabun";
			ArrayList<Guest01Bean> list= new ArrayList<Guest01Bean>();
			Connection conn = OraDb.getConnection();
			ResultSet rs= null;
			Statement stmt = null;
			try {
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					Guest01Bean bean= new Guest01Bean();
					bean.setSabun(rs.getInt("sabun"));
					bean.setName(rs.getString("name"));
					bean.setNalja(rs.getDate("nalja"));
					bean.setPay(rs.getInt("pay"));
					list.add(bean);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				
						try {
							if(rs!=null)rs.close();
							if(stmt!=null)stmt.close();
							if(conn!=null)conn.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
			}
			
			return list;
		}
		
		public int insertOne(String name,int pay){
			String sql=  "insert into guest01 values (guest01_seq.nextval,?,sysdate,?)";
			Connection conn = OraDb.getConnection();
			PreparedStatement pstmt = null;
			int result = 0;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setInt(2,pay);
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				try {
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return result;
		}
		public Guest01Bean selectOne(int sabun){
			Guest01Bean bean = new Guest01Bean();
			String sql = "select * from guest01 where sabun=?";
			conn= OraDb.getConnection();
				try {
					pstmt=conn.prepareStatement(sql);
					pstmt.setInt(1, sabun);
					rs= pstmt.executeQuery();
					if(rs.next()){
						bean.setSabun(rs.getInt("sabun"));
						bean.setName(rs.getString("name"));
						bean.setNalja(rs.getDate("nalja"));
						bean.setPay(rs.getInt("pay"));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally{
					
					try {
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		}
				
			
			
			
			return bean; 
		}
		public int updateOne(int sabun,String name,int pay){
			int result= 0;
			String sql  = "update guest01 set name =?,pay=? where sabun=?";
			conn= OraDb.getConnection();
				
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setInt(2,pay);
				pstmt.setInt(3,sabun);
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  finally{
				
				try {
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			return result;
		}
			
}
