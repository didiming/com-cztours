package com.accp.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.accp.pojo.ShopCar;
import com.accp.pojo.User;
import com.accp.service.ShopCarService;
import com.accp.service.UserService;
import com.accp.web.util.Constant;

@Controller
public class ShopCarComtroller {

	@Resource
	private ShopCarService shopCarService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="shopCar",method=RequestMethod.GET)
	private String shopCar(HttpSession session,Model model) throws Exception {
		User user = (User)session.getAttribute(Constant.LOGIN_USER);
		model.addAttribute("shopCars", shopCarService.getShopCarById(user.getuId()));
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "shopCar";
	}
	
	@RequestMapping(value="addShopCar",method=RequestMethod.GET)
	public String addShopCar(String cName,String cDetails,String cPrice,Integer hg,Integer gouwuche,ShopCar shopCar,Model model) throws Exception {
		ShopCar car = shopCarService.getCarById(hg);
		if(car == null){
			shopCar.setsName(cName);
			shopCar.setsPhoto(cDetails);
			shopCar.setuId(gouwuche);
			String xxx = cPrice.substring(1, 6);
			double price = Double.parseDouble(xxx);
			shopCar.setsPrice(price);
			shopCar.setcId(hg);
			if(shopCarService.save(shopCar)){
				return "redirect:/shopCar";
			}
		} else {
			String xxx = cPrice.substring(1, 6);
			double price = Double.parseDouble(xxx);
			shopCar.setsPrice(price);
			shopCar.setcId(hg);
			if(shopCarService.updateShopCar(shopCar)){
				return "redirect:/shopCar";
			}
		}
		return "redirect:/shopCar";
	}
	
	@RequestMapping(value="{sId}/deleteShopCar",method=RequestMethod.GET)
	public String deleteShopCar(@PathVariable Integer sId,Model model) throws Exception {
		shopCarService.deleteShopCarById(sId);
		return "redirect:/shopCar";
	}
	
	
}
