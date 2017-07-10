package model;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class PlbDaoTest {
	PlbDao dao;
	@Before
	public void setUp() throws Exception {
		dao=new PlbDao();
	}

	@Test
	public void testCreatePl() {
		Plb a=new Plb();
		a.setPlMore("12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890");
		boolean b=false;
		try {
			b=dao.createPl(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,false );
		
		a.setPlMore("1");
		b=false;
		try {
			b=dao.createPl(a);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("´íÎó",b,true );
	}

}
