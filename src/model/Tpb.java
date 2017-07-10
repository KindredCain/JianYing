package model;

import java.sql.Timestamp;

public class Tpb {
	private int pid=0;
	private String tool="";
	private String pMore="";
	private String pAdd="";
	private String pSc="";
	private Timestamp fbTime;
	private String fbZh="";
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getTool() {
		return tool;
	}
	public void setTool(String tool) {
		this.tool = tool;
	}
	public String getpMore() {
		return pMore;
	}
	public void setpMore(String pMore) {
		this.pMore = pMore;
	}
	public String getpAdd() {
		return pAdd;
	}
	public void setpAdd(String pAdd) {
		this.pAdd = pAdd;
	}
	public String getpSc() {
		return pSc;
	}
	public void setpSc(String pSc) {
		this.pSc = pSc;
	}
	public Timestamp getFbTime() {
		return fbTime;
	}
	public void setFbTime(Timestamp fbTime) {
		this.fbTime = fbTime;
	}
	public String getFbZh() {
		return fbZh;
	}
	public void setFbZh(String fbZh) {
		this.fbZh = fbZh;
	}
}
