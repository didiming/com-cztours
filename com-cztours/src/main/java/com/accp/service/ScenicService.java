package com.accp.service;


import java.util.List;

import org.pagination.JspPagination;

import com.accp.pojo.Scenic;

public interface ScenicService {

	public JspPagination<Scenic> getScenicList(Integer pageIndex,Integer pageSize);
	
	public boolean save(Scenic scenic);
	
	public Scenic getScenicById(Integer sId);
	
	public boolean updateScenic(Scenic scenic);
	
	public boolean deleteScenicById(Integer sId);
	
	public List<Scenic> getList();
	
}