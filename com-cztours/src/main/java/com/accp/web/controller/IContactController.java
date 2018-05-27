package com.accp.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.accp.pojo.User;
import com.accp.service.UserService;

@Controller
public class IContactController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value="myContact",method=RequestMethod.GET)
	public String myContact(Integer uId,Model model) throws Exception {
		model.addAttribute("myInfos", userService.getUser(uId));
		return "myContact";
	}
	
	@RequestMapping(value="updateIContact",method=RequestMethod.POST)
	public String updateIContact(User user,Model model) throws Exception {
		userService.updateIContact(user);
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "myContact";
	}
}
