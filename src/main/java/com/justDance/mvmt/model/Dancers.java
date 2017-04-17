package com.justDance.mvmt.model;

import java.io.Serializable;

public class Dancers implements Serializable{
	private int pId;
	private String bTitle;
	private String bName;
	private String bFileName;
	private String bDescription;
	
	public int getpId() {return pId;}
	public void setpId(int pId) {this.pId = pId;}
	
	public String getbTitle() {return bTitle;}
	public void setbTitle(String bTitle) {this.bTitle = bTitle;}
	
	public String getbName() {return bName;}
	public void setbName(String bName) {this.bName = bName;}
	
	public String getbFileName() {return bFileName;}
	public void setbFileName(String bFileName) {this.bFileName = bFileName;}
	
	public String getbDescription() {return bDescription;}
	public void setbDescription(String bDescription) {this.bDescription = bDescription;}
	
	@Override
	public String toString() {
		return "Dancers [pId=" + pId + ", bTitle=" + bTitle + ", bName=" + bName + ", bFileName=" + bFileName
				+ ", bDescription=" + bDescription + "]\n";
	}
	
	
	
}
