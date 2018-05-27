package com.accp.pojo;

import java.io.Serializable;
import java.util.Date;

public class ShopCar implements Serializable {
	private static final long serialVersionUID = 7732785396557647934L;

	private Integer sId;
	
	private String sName;
	
	private Double sPrice;
	
	private String sPhoto;
	
	private Date sDate;
	
	private Integer uId;
	
	private Integer cId;

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

	public Double getsPrice() {
		return sPrice;
	}

	public void setsPrice(Double sPrice) {
		this.sPrice = sPrice;
	}

	public Date getsDate() {
		return sDate;
	}

	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}

	public Integer getuId() {
		return uId;
	}

	public String getsPhoto() {
		return sPhoto;
	}

	public void setsPhoto(String sPhoto) {
		this.sPhoto = sPhoto;
	}

	public void setuId(Integer uId) {
		this.uId = uId;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
