package com.accp.web.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.accp.pojo.User;
import com.accp.service.UserService;
import com.accp.web.util.Constant;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

@Controller
@SessionAttributes(Constant.SESSION_MSG)
public class UserController {

	@Resource
	private Producer captchaProducer;
	
	@Resource
	private UserService userService;
	
	@RequestMapping("getCaptchaCode")
	public ModelAndView getCaptchaCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();

		response.setDateHeader("Expires", 0);
		response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		response.addHeader("Cache-Control", "post-check=0, pre-check=0");
		response.setHeader("Pragma", "no-cache");
		response.setContentType("image/jpeg");

		String capText = captchaProducer.createText();
		session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
		BufferedImage bi = captchaProducer.createImage(capText);
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(bi, "jpg", out);

		try {
			out.flush();
		} finally {
			out.close();
		}
		return null;
	}
	
	@RequestMapping(value="checkExistsCaptchaCode",method=RequestMethod.POST)
	public boolean checkExistsCaptchaCode(
			@RequestParam String captchaCode,
			HttpServletRequest request) throws Exception {
		System.out.println(captchaCode);
		String generateCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		
		if(generateCode.equals(captchaCode)){
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="adminLogin",method=RequestMethod.GET)
	public String adminLogin()  throws Exception {
		return "adminLogin";
	}
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String register(User user) throws Exception {
		return "register";
	}
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String register(User user,Model model,@RequestParam String captchaCode,HttpServletRequest request) throws Exception {
		String generateCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		
		if(!generateCode.equals(captchaCode)){
			return "register";
		}
		
		String pwd = BCrypt.hashpw(user.getuPwd(), BCrypt.gensalt());
		user.setuPwd(pwd);
		if(userService.save(user)){
			return "redirect:/login";
		} else {
			return "register";
		}
	}
	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login(User user) throws Exception {
		return "login";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(User user,HttpSession session,Model model) throws Exception {
		User loginUser = userService.getUserByName(user.getuName());
		if(loginUser == null){
			return "login";
		} else if(BCrypt.checkpw(user.getuPwd(),loginUser.getuPwd())){
			session.setAttribute(Constant.LOGIN_USER, loginUser);
			model.addAttribute("myInfos", userService.getUser(loginUser.getuId()));
			return "index";
		} else {
			return "login";
		}
	}
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(User user,Model model) throws Exception {
		model.addAttribute("myInfos", userService.getUser(user.getuId()));
		return "index";
	}
	
	@RequestMapping(value="zhuxiaozhanghao",method=RequestMethod.GET)
	public String zhuxiaozhanghao(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/login";
	}
}
