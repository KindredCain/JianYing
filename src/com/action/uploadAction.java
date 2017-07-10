package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import model.*;

public class uploadAction {
	private File file;
	private String fileFileName;
	private String fileContentType;
	private Tpb tpb = new Tpb();
	TpbDao dao = new TpbDao();
	public Tpb getTpb() {
		return tpb;
	}
	public void setTpb(Tpb tpb) {
		this.tpb = tpb;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	
	public String execute() throws Exception {
		String zh=(String) ServletActionContext.getRequest().getSession().getAttribute("Zh");
		if(zh==null)
			return "fail";
		File uploadFile=new File("g:"+File.separator+"jianyingUploadFile"+File.separator+zh);
		//File uploadFile=new File("//usr"+File.separator+"local"+File.separator+"tomcat8"+File.separator+"webapps"+File.separator+"jianying"+File.separator+"userdata"+File.separator+zh);
		if(!uploadFile.exists()){
			uploadFile.mkdir();
		}
		String pAdd=uploadFile.getPath()+ File.separator +fileFileName;
		FileInputStream input=new FileInputStream(file);
		FileOutputStream out=new FileOutputStream(pAdd);
		try{
			byte[] b=new byte[1024];
			int i=0;
			while((i=input.read(b))>0){
				out.write(b,0,i);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			input.close();
			out.close();
		}
		//pAdd="userdata"+File.separator+zh+ File.separator +fileFileName;
		this.getTpb().setFbZh(zh);
		this.getTpb().setpAdd(pAdd);
		this.getTpb().setpSc(ServletActionContext.getRequest().getParameter("pSc"));
		this.getTpb().setpMore(ServletActionContext.getRequest().getParameter("pMore"));
		dao.addTp(this.getTpb());
		return "success";
	}
}
