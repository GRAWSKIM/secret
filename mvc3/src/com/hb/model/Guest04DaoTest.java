package com.hb.model;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.junit.Test;

public class Guest04DaoTest {
	Logger log = Logger.getLogger("com.hb.model.Guest04DaoTest");
	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException {
//		Guest04Dao dao= new Guest04Dao();
//		assertNotNull(dao.selectAll());
//		assertTrue(dao.selectAll().size()>0);
//		assertSame(dao.selectAll().size(), 7);
		log.debug("개발메세지");
		log.info("경고");
		log.warn("주의");
		log.error("에러");
		log.fatal("항상");
	}
	@Test
	public void testSelectOne() throws ClassNotFoundException, SQLException{
		Guest04Dao dao= new Guest04Dao();
		GuestDto dto=dao.selectOne(22);
		assertTrue(dto==null);
//		assertSame(dto.getPay(), 123);
	}
}
