package com.hb.test;

import org.junit.Test;
import static org.junit.Assert.*;

public class TestEx01 {
	@Test
	public void testFunc1(){
		int a=3,b=2,c=a+b;
		org.junit.Assert.assertSame(5, c);
		assertNotSame(6, c);
	}
	@Test
	public void testFunc2(){
		String st1,st2;
		st1=new String("java");
		st2=new String("java");
		assertEquals(st1, st2);//equals
	
	}
	@Test
	public void testFunc3(){
		assertNull(null);
		assertNotNull(new String());
	}
	@Test
	public void testFunc4(){
		assertTrue(true);
		assertFalse("½ÇÆÐ",false);
	}
	@Test
	public void testFunc5(){
		
	}
}
