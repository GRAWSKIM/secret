package com.hb.test;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.hb.util.MyOracle;

public class testMyOracle {
	
	@Test
	public void testGetConnection() throws ClassNotFoundException, SQLException{
		Connection conn;
		
			conn = MyOracle.getConnection();
		
		org.junit.Assert.assertNotNull(conn);//not null 검사
		org.junit.Assert.assertFalse(conn.isClosed());//true검사
	
		
	}
	@Test
	public void testGetConnection2() throws ClassNotFoundException, SQLException{
		Connection conn ;
		Connection conn2;
		
		conn =MyOracle.getConnection();
		conn2 = MyOracle.getConnection();
		
		org.junit.Assert.assertFalse(conn.isClosed());//false검사 
		//conn==conn2;
		org.junit.Assert.assertSame(conn, conn2);
		conn.close();
		org.junit.Assert.assertTrue(conn2.isClosed());
		conn=MyOracle.getConnection();
		org.junit.Assert.assertFalse(conn.isClosed());
		org.junit.Assert.assertTrue(conn2.isClosed());
		org.junit.Assert.assertNotSame(conn, conn2);
		
	}
}
