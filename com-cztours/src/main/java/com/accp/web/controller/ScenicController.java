package com.accp.web.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.accp.pojo.Scenic;
import com.accp.service.ScenicService;
import com.accp.service.UserService;
import com.accp.web.util.Constant;
import com.accp.web.util.WebUtil;

@Controller
public class ScenicController {
	
	@Resource
	private ScenicService scenicService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="lvyoujindian",method=RequestMethod.GET)
	public String lvyoujindian(
			@RequestParam(required=false,defaultValue="0") Integer pageIndex,
			@RequestParam(required=false,defaultValue="3") Integer pageSize,
			ModelMap model) throws Exception {
		model.addAttribute(Constant.PAGINATION, scenicService.getScenicList(pageIndex, pageSize));
		return "lvyoujindian";
	}
	
	@RequestMapping(value="tianjialvyou",method=RequestMethod.GET)
	public String tianjialvyou(Scenic scenic,Model model)  throws Exception {
		model.addAttribute("msg", 1);
		return "tianjialvyou";
	}
	
	@RequestMapping(value="tianjialvyou",method=RequestMethod.POST)
	public String tianjialvyou(MultipartFile file,Scenic scenic,Model model)  throws Exception {
		
		String fileUpload = "fileUpload/";

		String originalFilename = file.getOriginalFilename();

		String newFileName = UUID.randomUUID().toString()
					+ originalFilename.substring(originalFilename.indexOf("."));
		
		String realPath = WebUtil.getRealPath() + fileUpload;
		
		file.transferTo(new File(realPath, newFileName));
		
		scenic.setsPhoto(newFileName);
		
		if(scenicService.save(scenic)){
			return "redirect:/lvyoujindian";
		} else {
			return "tianjialvyou";
		}
	}
	
	@RequestMapping(value="bianjilvyou",method=RequestMethod.GET)
	public String bianjilvyou(Integer sId,Model model) throws Exception {
		model.addAttribute("msg", 2);
		model.addAttribute("scenic", scenicService.getScenicById(sId));
		return "tianjialvyou";
	}
	
	@RequestMapping(value="bianjilvyou",method=RequestMethod.POST)
	public String bianjilvyou(MultipartFile file,Scenic scenic,Model model) throws Exception {
		String fileUpload = "fileUpload/";
		
		String originalFilename = file.getOriginalFilename();
		
		String newFileName = UUID.randomUUID().toString()
					+ originalFilename.substring(originalFilename.indexOf("."));
		
		String realPath = WebUtil.getRealPath() + fileUpload;
		
		file.transferTo(new File(realPath, newFileName));
		
		scenic.setsPhoto(newFileName);
		
		if(scenicService.updateScenic(scenic)){
			return "redirect:/lvyoujindian";
		} else {
			return "bianjilvyou";
		}
	}
	
	@RequestMapping(value="{sId}/deleteScenicById",method=RequestMethod.GET)
	public String deleteScenicById(@PathVariable Integer sId,Model model) throws Exception {
		scenicService.deleteScenicById(sId);
		return "redirect:/lvyoujindian";
	}
	
	@RequestMapping(value="scenicList",method=RequestMethod.GET)
	public String scenicList(Integer uId,Model model) throws Exception {
		model.addAttribute("scenics", scenicService.getList());
		model.addAttribute("myInfos", userService.getUser(uId));
		return "scenicList";
	}
	
	@RequestMapping(value="getscenicQTById",method=RequestMethod.GET)
	public String getscenicQTById(Integer sId,Integer uId,Model model) throws Exception {
		model.addAttribute("scenic", scenicService.getScenicById(sId));
		model.addAttribute("myInfos", userService.getUser(uId));
		return "scenic";
	}

}
