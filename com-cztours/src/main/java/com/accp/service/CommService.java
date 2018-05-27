package com.accp.service;


import java.util.List;

import org.pagination.JspPagination;

import com.accp.pojo.Comm;

public interface CommService {

	public JspPagination<Comm> getCommList(Integer pageIndex,Integer pageSize);
	
	public boolean save(Comm comm);
	
	public Comm getCommById(Integer comm);
	
	public boolean updateComm(Comm comm);
	
	public boolean deleteCommById(Integer cId);
	
	public List<Comm> getMallList();
}