package com.accp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.accp.dao.ShopCarDao;
import com.accp.pojo.ShopCar;
import com.accp.service.ShopCarService;

@Service("shopCarService")
public class ShopCarServiceImpl implements ShopCarService {

	@Resource
	private ShopCarDao shopCarDao;
	
	@Override
	public boolean save(ShopCar shopCar) {
		// TODO Auto-generated method stub
		return shopCarDao.save(shopCar) == 1;
	}

	@Override
	public List<ShopCar> getShopCarById(Integer uId) {
		// TODO Auto-generated method stub
		return shopCarDao.getShopCarById(uId);
	}

	@Override
	public boolean deleteShopCarById(Integer sId) {
		// TODO Auto-generated method stub
		return shopCarDao.deleteShopCarById(sId) == 1;
	}

	@Override
	public ShopCar getCarById(Integer cId) {
		// TODO Auto-generated method stub
		return shopCarDao.getCarById(cId);
	}

	@Override
	public boolean updateShopCar(ShopCar shopCar) {
		// TODO Auto-generated method stub
		return shopCarDao.updateShopCar(shopCar) == 1;
	}

}
