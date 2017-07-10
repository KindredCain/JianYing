package model;

import java.sql.Timestamp;

public class Plb {
	private String plMore;
	private String plZh;
	private int plPId;
	private Timestamp plTime;
	public String getPlMore() {
		return plMore;
	}
	public void setPlMore(String plMore) {
		this.plMore = plMore;
	}
	public String getPlZh() {
		return plZh;
	}
	public void setPlZh(String plZh) {
		this.plZh = plZh;
	}
	public int getPlPId() {
		return plPId;
	}
	public void setPlPId(int plPId) {
		this.plPId = plPId;
	}
	public Timestamp getPlTime() {
		return plTime;
	}
	public void setPlTime(Timestamp plTime) {
		this.plTime = plTime;
	}
}
