package model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class YhbDaoTest {
	YhbDao dao;
	@Before
	public void setUp() throws Exception {
		dao=new YhbDao();
	}

	@Test
	public void testChongfuZh() {
		String b = null;
		try {
			Yhb a = dao.chongfuZh("123456");
			b=a.getZh();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,"123456" );
		
		try {
			Yhb a = dao.chongfuZh("not");
			b=a.getZh();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,"" );
	}
	
	@Test
	public void testCreateYhb() {
		Yhb a = new Yhb();
		a.setZh("12345678");
		a.setPwd("12345678");
		boolean b=false;
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,true );
		
		a.setZh("12345678");
		a.setPwd("");
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
		
		a.setZh("123456789012345");
		a.setPwd("12345678");
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
		
		a.setZh("12345");
		a.setPwd("12345678");
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
		
		a.setZh("12345678");
		a.setPwd("123456789012345");
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
		
		a.setZh("12345678");
		a.setPwd("12345");
		try {
			b=dao.createYhb(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
	}

}
