package com.accp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.pojo.Comm;

public interface CommDao {

	public List<Comm> getCommList(
			@Param("begin") Integer begin,
			@Param("size") Integer size);
	
	public Integer getCommCount();

	public Integer save(Comm comm);
	
	public Comm getCommById(Integer comm);
	
	public Integer updateComm(Comm comm);
	
	public Integer deleteCommById(Integer cId);
	
	public List<Comm> getMallList();
}
