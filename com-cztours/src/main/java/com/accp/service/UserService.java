package com.accp.service;

import com.accp.pojo.User;

public interface UserService {
	public boolean save(User user);
	
	public User getUserByName(String uName);
	
	public User getUser(Integer uId);
	
	public boolean updateInfo(User user);
	
	public boolean updateInfoPhoto(User user);
	
	public boolean updateInfoSecurity(User user);
	
	public boolean updateIContact(User user);
}
