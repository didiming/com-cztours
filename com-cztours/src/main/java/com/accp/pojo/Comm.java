package com.accp.pojo;

import java.io.Serializable;
import java.util.Date;

public class Comm implements Serializable {
	private static final long serialVersionUID = 5331422868605639874L;
	
	private Integer cId;
	
	private String cName;
	
	private Double cPrice;
	
	private String cFreight;
	
	private String cDetails;
	
	private Date cCreateTime;

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public Double getcPrice() {
		return cPrice;
	}

	public void setcPrice(Double cPrice) {
		this.cPrice = cPrice;
	}

	public String getcFreight() {
		return cFreight;
	}

	public void setcFreight(String cFreight) {
		this.cFreight = cFreight;
	}

	public String getcDetails() {
		return cDetails;
	}

	public void setcDetails(String cDetails) {
		this.cDetails = cDetails;
	}

	public Date getcCreateTime() {
		return cCreateTime;
	}

	public void setcCreateTime(Date cCreateTime) {
		this.cCreateTime = cCreateTime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
