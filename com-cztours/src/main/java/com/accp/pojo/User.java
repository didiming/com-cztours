package com.accp.pojo;

import java.io.Serializable;

public class User implements Serializable {
	private static final long serialVersionUID = -4485845624665364736L;

	private Integer uId;
	
	private String uName;
	
	private String uPwd;
	
	private String mName;
	
	private String mSex;
	
	private String mCity;
	
   	private String mDate;
   	
	private String mSign;
	
	private String mPhoto;
	
	private String iCity;
	
	private String iAddress;
	
	private String iPhone;
	
	private Integer iOffice;
	
	private Integer iStaus;
	
	private String iName;

	public Integer getuId() {
		return uId;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPwd() {
		return uPwd;
	}

	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
	}
	
	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmSex() {
		return mSex;
	}

	public void setmSex(String mSex) {
		this.mSex = mSex;
	}

	public String getmCity() {
		return mCity;
	}

	public void setmCity(String mCity) {
		this.mCity = mCity;
	}

	public String getmDate() {
		return mDate;
	}

	public void setmDate(String mDate) {
		this.mDate = mDate;
	}

	public String getmSign() {
		return mSign;
	}

	public void setmSign(String mSign) {
		this.mSign = mSign;
	}

	public String getmPhoto() {
		return mPhoto;
	}

	public void setmPhoto(String mPhoto) {
		this.mPhoto = mPhoto;
	}

	public String getiCity() {
		return iCity;
	}

	public void setiCity(String iCity) {
		this.iCity = iCity;
	}

	public String getiAddress() {
		return iAddress;
	}

	public void setiAddress(String iAddress) {
		this.iAddress = iAddress;
	}

	public String getiPhone() {
		return iPhone;
	}

	public void setiPhone(String iPhone) {
		this.iPhone = iPhone;
	}

	public Integer getiStaus() {
		return iStaus;
	}

	public void setiStaus(Integer iStaus) {
		this.iStaus = iStaus;
	}

	public Integer getiOffice() {
		return iOffice;
	}

	public void setiOffice(Integer iOffice) {
		this.iOffice = iOffice;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
