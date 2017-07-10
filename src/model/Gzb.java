package model;

import java.sql.Timestamp;

public class Gzb {
	private String gzId;
	private String gzZh;
	private String gzZhId;
	private Timestamp gzTime;
	public String getGzZhId() {
		return gzZhId;
	}
	public void setGzZhId(String gzZhId) {
		this.gzZhId = gzZhId;
	}
	public String getGzZh() {
		return gzZh;
	}
	public void setGzZh(String gzZh) {
		this.gzZh = gzZh;
	}
	public String getGzId() {
		return gzId;
	}
	public void setGzId(String gzId) {
		this.gzId = gzId;
	}
	public Timestamp getGzTime() {
		return gzTime;
	}
	public void setGzTime(Timestamp gzTime) {
		this.gzTime = gzTime;
	}
}
