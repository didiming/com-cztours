package com.accp.service;

import java.util.List;

import com.accp.pojo.ShopCar;

public interface ShopCarService {
	public boolean save(ShopCar shopCar);
	
	public List<ShopCar> getShopCarById(Integer uId);
	
	public boolean deleteShopCarById(Integer sId);
	
	public ShopCar getCarById(Integer cId);
	
	public boolean updateShopCar(ShopCar shopCar);
}
