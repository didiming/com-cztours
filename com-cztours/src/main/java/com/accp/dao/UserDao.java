package com.accp.dao;

import com.accp.pojo.User;

public interface UserDao {

	public Integer save(User user);
	
	public User getUserByName(String uName);
	
	public User getUser(Integer uId);
	
	public Integer updateInfo(User user);
	
	public Integer updateInfoPhoto(User user);
	
	public Integer updateInfoSecurity(User user);
	
	public Integer updateIContact(User user);
}
