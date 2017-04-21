package com.hb.test;

import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.Test;

import com.hb.dao.Guest03Dao;
import com.hb.dto.javaBeab;

import static org.junit.Assert.*;
public class testDao {
	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException{
		Guest03Dao dao = new Guest03Dao();
		ArrayList<javaBeab> list=dao.selectAll();
		assertNotNull("list==null",list);
		assertTrue("list에 내용없음",list.size()>0);
	}
}
