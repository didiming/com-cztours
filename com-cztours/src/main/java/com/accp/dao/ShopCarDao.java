package com.accp.dao;

import java.util.List;

import com.accp.pojo.ShopCar;

public interface ShopCarDao {
	public Integer save(ShopCar shopCar);
	
	public List<ShopCar> getShopCarById(Integer uId);
	
	public Integer deleteShopCarById(Integer sId);
	
	public ShopCar getCarById(Integer cId);
	
	public Integer updateShopCar(ShopCar shopCar);
}
