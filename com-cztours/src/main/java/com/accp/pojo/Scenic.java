package com.accp.pojo;

import java.io.Serializable;
import java.util.Date;

public class Scenic implements Serializable {
	private static final long serialVersionUID = 524376303095863160L;

	private Integer sId;

	private String sName;
	
	private String sContent;
	
	private String sPhoto;
	
	private String sDescribe;
	
	private Date sCreateTime; 

	public Integer getsId() {
		return sId;
	}

	public void setsId(Integer sId) {
		this.sId = sId;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsContent() {
		return sContent;
	}

	public void setsContent(String sContent) {
		this.sContent = sContent;
	}

	public String getsPhoto() {
		return sPhoto;
	}

	public void setsPhoto(String sPhoto) {
		this.sPhoto = sPhoto;
	}

	public String getsDescribe() {
		return sDescribe;
	}

	public void setsDescribe(String sDescribe) {
		this.sDescribe = sDescribe;
	}
	
	public Date getsCreateTime() {
		return sCreateTime;
	}

	public void setsCreateTime(Date sCreateTime) {
		this.sCreateTime = sCreateTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
