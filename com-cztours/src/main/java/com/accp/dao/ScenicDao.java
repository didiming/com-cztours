package com.accp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.pojo.Scenic;

public interface ScenicDao {

	public List<Scenic> getScenicList(
			@Param("begin") Integer begin,
			@Param("size") Integer size);
	
	public Integer getScenicCount();
	
	public Integer save(Scenic scenic);
	
	public Scenic getScenicById(Integer sId);
	
	public Integer updateScenic(Scenic scenic);
	
	public Integer deleteScenicById(Integer sId);
	
	public List<Scenic> getList();
}
