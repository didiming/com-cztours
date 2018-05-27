package com.accp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelComeController {

	@RequestMapping(value="adminIndex",method=RequestMethod.GET)
	public String adminLogin() throws Exception {
		return "adminIndex";
	}
	
	@RequestMapping(value="welCome",method=RequestMethod.GET)
	public String welCome() throws Exception {
		return "welCome";
	}
}
