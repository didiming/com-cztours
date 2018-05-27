package com.accp.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.accp.dao.UserDao;
import com.accp.pojo.User;
import com.accp.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	
	@Override
	public boolean save(User user) {
		// TODO Auto-generated method stub
		return userDao.save(user) == 1;
	}

	@Override
	public User getUserByName(String uName) {
		// TODO Auto-generated method stub
		return userDao.getUserByName(uName);
	}

	@Override
	public User getUser(Integer uId) {
		// TODO Auto-generated method stub
		return userDao.getUser(uId);
	}

	@Override
	public boolean updateInfo(User user) {
		// TODO Auto-generated method stub
		return userDao.updateInfo(user) == 1;
	}

	@Override
	public boolean updateInfoPhoto(User user) {
		// TODO Auto-generated method stub
		return userDao.updateInfoPhoto(user) == 1;
	}

	@Override
	public boolean updateInfoSecurity(User user) {
		// TODO Auto-generated method stub
		return userDao.updateInfoSecurity(user) == 1;
	}

	@Override
	public boolean updateIContact(User user) {
		// TODO Auto-generated method stub
		return userDao.updateIContact(user) == 1;
	}

}
