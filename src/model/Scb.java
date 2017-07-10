package model;

import java.sql.Timestamp;

public class Scb {
	private String scId;
	private int scPId;
	private String scZhId;
	private Timestamp scTime;
	public int getScPId() {
		return scPId;
	}
	public void setScPId(int scPId) {
		this.scPId = scPId;
	}
	public String getScZhId() {
		return scZhId;
	}
	public void setScZhId(String scZhId) {
		this.scZhId = scZhId;
	}
	public String getScId() {
		return scId;
	}
	public void setScId(String scId) {
		this.scId = scId;
	}
	public Timestamp getScTime() {
		return scTime;
	}
	public void setScTime(Timestamp scTime) {
		this.scTime = scTime;
	}
}
