package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import c3p0.*;

public class YhbDao {
	
	private Connection conn = null;
	
	public Yhb chongfuZh(String Zh) throws Exception{
		Yhb result=new Yhb();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select zh,pwd from yhb where zh=?";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, Zh);
			java.sql.ResultSet rs=pst.executeQuery();
			if(rs.next()){
				result.setZh(rs.getString(1));
				result.setPwd(rs.getString(2));
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
	
	public boolean createYhb(Yhb a) throws Exception{
		boolean result=false;
		if (a.getPwd().equals("")||a.getZh().length()>14||a.getZh().length()<6||a.getPwd().length()>14||a.getPwd().length()<6)
			return result;
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="INSERT INTO yhb(zh,nc,pwd,sj,qq,dz,more,sf,fg) VALUES (?, ?, ?, now(), ?, ?, ?, ?, ?)";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, a.getZh());
			pst.setString(2, a.getNc());
			pst.setString(3, a.getPwd());
			pst.setString(4, a.getQq());
			pst.setString(5, a.getDz());
			pst.setString(6, a.getMore());
			pst.setString(7, a.getSf());
			pst.setString(8, a.getFg());
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
	
	public Yhb selectZh(String Zh) throws Exception{
		Yhb result=new Yhb();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select zhid,zh,nc,pwd,sj,qq,dz,more,sf,fg from yhb where zh=?";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, Zh);
			java.sql.ResultSet rs=pst.executeQuery();
			if(rs.next()){
				result.setZhid(rs.getInt(1));
				result.setZh(rs.getString(2));
				result.setNc(rs.getString(3));
				result.setPwd(rs.getString(4));
				result.setSj(rs.getTimestamp(5));
				result.setQq(rs.getString(6));
				result.setDz(rs.getString(7));
				result.setMore(rs.getString(8));
				result.setSf(rs.getString(9));
				result.setFg(rs.getString(10));
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
	
	public boolean upYhb(Yhb a) throws Exception{
		boolean result=false;
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="UPDATE yhb set nc=?,qq=?,dz=?,more=?,sf=?,fg=? where zh=?";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, a.getNc());
			pst.setString(2, a.getQq());
			pst.setString(3, a.getDz());
			pst.setString(4, a.getMore());
			pst.setString(5, a.getSf());
			pst.setString(6, a.getFg());
			pst.setString(7, a.getZh());
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
