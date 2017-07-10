package model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import c3p0.DBPool;

public class TpbDao {
	
	private Connection conn = null;
	
	public Tpb selectTpMore(int pid) throws Exception{
		Tpb result=new Tpb();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select pid,tool,pMore,pAdd,pSc,fbTime,fbZh from Tpb where pid=?";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, pid);
			java.sql.ResultSet rs=pst.executeQuery();
			if(rs.next()){
				result.setPid(rs.getInt(1));
				result.setTool(rs.getString(2));
				result.setpMore(rs.getString(3));
				result.setpAdd(rs.getString(4));
				result.setpSc(rs.getString(5));
				result.setFbTime(rs.getTimestamp(6));
				result.setFbZh(rs.getString(7));
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
	
	public List<Tpb> selectTp() throws Exception{
		List<Tpb> result=new ArrayList<Tpb>();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select pid,pAdd,fbZh from Tpb order by fbTime desc";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			java.sql.ResultSet rs=pst.executeQuery();
			while(rs.next()){
				Tpb a=new Tpb();
				a.setPid(rs.getInt(1));
				a.setpAdd(rs.getString(2));
				a.setFbZh(rs.getString(3));
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
	
	public boolean addTp(Tpb a) throws Exception{
		boolean result=false;
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="insert into Tpb(pSc,pMore,pAdd,fbZh) value(?,?,?,?)";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,a.getpSc());
			pst.setString(2,a.getpMore());
			pst.setString(3,a.getpAdd());
			pst.setString(4,a.getFbZh());
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
	
	public List<Tpb> selectSC(String Zh) throws Exception{
		List<Tpb> result=new ArrayList<Tpb>();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select pid,pAdd,fbZh from Tpb where pid in (select scPid from Scb where scZhId = ?) order by fbTime desc";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, Zh);
			java.sql.ResultSet rs=pst.executeQuery();
			while(rs.next()){
				Tpb a=new Tpb();
				a.setPid(rs.getInt(1));
				a.setpAdd(rs.getString(2));
				a.setFbZh(rs.getString(3));
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
	
	public List<Tpb> selectGZ(String Zh) throws Exception{
		List<Tpb> result=new ArrayList<Tpb>();
		try {
			conn=DBPool.getInstance().getConnection();
			String sql="select pid,pAdd,fbZh from Tpb where fbZh in (select gzZh from Gzb where gzZhId = ?) order by fbTime desc";
			java.sql.PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, Zh);
			java.sql.ResultSet rs=pst.executeQuery();
			while(rs.next()){
				Tpb a=new Tpb();
				a.setPid(rs.getInt(1));
				a.setpAdd(rs.getString(2));
				a.setFbZh(rs.getString(3));
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
}
