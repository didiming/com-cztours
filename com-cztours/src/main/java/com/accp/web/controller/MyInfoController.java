package com.accp.web.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.accp.pojo.User;
import com.accp.service.UserService;
import com.accp.web.util.WebUtil;

@Controller
public class MyInfoController {

	@Resource
	private UserService userService;
	
	@RequestMapping(value="myInfo",method=RequestMethod.GET)
	public String myInfo(Integer uId,Model model) throws Exception {
		model.addAttribute("myInfos", userService.getUser(uId));
		return "myInfo";
	}
	
	@RequestMapping(value="updateInfo",method=RequestMethod.POST)
	public String updateInfo(User user,Model model) throws Exception {
		userService.updateInfo(user);
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "myInfo";
	}
	
	@RequestMapping(value="myHead",method=RequestMethod.GET)
	public String myHead(Integer uId,Model model) throws Exception {
		model.addAttribute("myInfos", userService.getUser(uId));
		return "myHead";
	}
	
	@RequestMapping(value="myHead",method=RequestMethod.POST)
	public String myHead(MultipartFile file,User user,Model model) throws Exception {
		String fileUpload = "fileUpload/";

		String originalFilename = file.getOriginalFilename();

		String newFileName = UUID.randomUUID().toString()
					+ originalFilename.substring(originalFilename.indexOf("."));
		
		String realPath = WebUtil.getRealPath() + fileUpload;
		
		file.transferTo(new File(realPath, newFileName));
		
		user.setmPhoto(newFileName);
		
		userService.updateInfoPhoto(user);
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "myHead";
	}
	
	@RequestMapping(value="security",method=RequestMethod.GET)
	public String security(Integer uId,Model model) throws Exception {
		model.addAttribute("myInfos", userService.getUser(uId));
		return "security";
	}
	
	@RequestMapping(value="security",method=RequestMethod.POST)
	public String security(User user,String password1,String password2,Model model) throws Exception {
		if(password1.equals(password2)){
			String pwd = BCrypt.hashpw(password2, BCrypt.gensalt());
			user.setuPwd(pwd);
			userService.updateInfoSecurity(user);
			return "login";
		}
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "security";
	}
	
}
