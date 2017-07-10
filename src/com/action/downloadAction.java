package com.action;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class downloadAction {
	private InputStream fileInput;
	private String fileName;
	public InputStream getFileInput() {
		return ServletActionContext.getServletContext().getResourceAsStream("uploadFile\\"+fileName);
	}
	public void setFileInput(InputStream fileInput) {
		this.fileInput = fileInput;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String execute() throws Exception{
		fileInput=ServletActionContext.getServletContext().getResourceAsStream("uploadFile\\"+fileName);
		return "success";
	}
}
