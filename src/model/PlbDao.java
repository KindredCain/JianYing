package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import c3p0.DBPool;

public class PlbDao {

	private Connection conn = null;
	
	public List<Plb> selectPl(int plPId) throws Exception{
		List<Plb> result=new ArrayList<Plb>();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select plMore,plZh,plTime from Plb where plPId = ? order by plTime desc";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, plPId);;
			java.sql.ResultSet rs=pst.executeQuery();
			while(rs.next()){
				Plb a=new Plb();
				a.setPlMore(rs.getString(1));
				a.setPlZh(rs.getString(2));
				a.setPlTime(rs.getTimestamp(3));
				result.add(a);
			}
			rs.close();
			pst.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		finally{
			if(conn!=null)
				try {
					conn.close();
				} 
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return result;
	}
	
	public boolean createPl(Plb a) throws Exception{
		boolean result=false;
		if (a.getPlMore().length()>100)
			return result;
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="INSERT INTO plb(plTime,plMore,plZh,plPId) VALUES (now(), ?, ?, ?)";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, a.getPlMore());
			pst.setString(2, a.getPlZh());
			pst.setInt(3, a.getPlPId());
			int rs=pst.executeUpdate();
			if(rs==1)
				result=true;
			pst.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		finally{
			if(conn!=null)
				try {
					conn.close();
				} 
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return result;
	}
}
