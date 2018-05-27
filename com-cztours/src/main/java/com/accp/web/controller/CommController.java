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

import com.accp.pojo.Comm;
import com.accp.service.CommService;
import com.accp.service.UserService;
import com.accp.web.util.Constant;
import com.accp.web.util.WebUtil;

@Controller
public class CommController {

	@Resource
	private CommService commService;
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="shangchengliebiao",method=RequestMethod.GET)
	public String shangchengliebiao(
			@RequestParam(required=false,defaultValue="0") Integer pageIndex,
			@RequestParam(required=false,defaultValue="3") Integer pageSize,
			ModelMap model) throws Exception {
		model.addAttribute(Constant.PAGINATION, commService.getCommList(pageIndex, pageSize));
		return "shangchengliebiao";
	}
	
	@RequestMapping(value="shangchengtianjia",method=RequestMethod.GET)
	public String shangchengtianjia(Comm comm,Model model) throws Exception {
		model.addAttribute("msg", 1);
		return "shangchengtianjia";
	}
	
	@RequestMapping(value="shangchengtianjia",method=RequestMethod.POST)
	public String shangchengtianjia(MultipartFile file,Comm comm,Model model) throws Exception {
		String fileUpload = "fileUpload/";

		String originalFilename = file.getOriginalFilename();

		String newFileName = UUID.randomUUID().toString()
					+ originalFilename.substring(originalFilename.indexOf("."));
		
		String realPath = WebUtil.getRealPath() + fileUpload;
		
		file.transferTo(new File(realPath, newFileName));
		
		comm.setcDetails(newFileName);
		
		if(commService.save(comm)){
			return "redirect:/shangchengliebiao";
		} else {
			return "shangchengtianjia";
		}
	}
	
	@RequestMapping(value="bianjishangcheng",method=RequestMethod.GET)
	public String bianjishangcheng(Integer cId,Model model) throws Exception {
		model.addAttribute("comms", commService.getCommById(cId));
		model.addAttribute("msg", 2);
		return "shangchengtianjia";
	}
	
	@RequestMapping(value="bianjishangcheng",method=RequestMethod.POST)
	public String bianjishangcheng(MultipartFile file,Comm comm,Model model) throws Exception {
		String fileUpload = "fileUpload/";
		
		String originalFilename = file.getOriginalFilename();
		
		String newFileName = UUID.randomUUID().toString()
					+ originalFilename.substring(originalFilename.indexOf("."));
		
		String realPath = WebUtil.getRealPath() + fileUpload;
		
		file.transferTo(new File(realPath, newFileName));
		
		comm.setcDetails(newFileName);
		
		if(commService.updateComm(comm)){
			return "redirect:/shangchengliebiao";
		} else {
			return "shangchengtianjia";
		}
	}
	
	@RequestMapping(value="{cId}/deleteCommById",method=RequestMethod.GET)
	public String deleteshangcheng(@PathVariable Integer cId,Model model) throws Exception {
		commService.deleteCommById(cId);
		return "redirect:/shangchengliebiao";
	}
	
	@RequestMapping(value="mallList",method=RequestMethod.GET)
	public String mallList(Integer uId,Model model) throws Exception {
		model.addAttribute("malls", commService.getMallList());
		model.addAttribute("myInfos", userService.getUser(uId));
		return "mallList";
	}
	
	@RequestMapping(value="project",method=RequestMethod.GET)
	public String project(Integer cId,Integer uId,Model model) throws Exception {
		model.addAttribute("comms", commService.getCommById(cId));
		model.addAttribute("myInfos", userService.getUser(uId));
		return "project";
	}
	
	@RequestMapping(value="confirmOrder",method=RequestMethod.GET)
	public String confirmOrder(String cName,String cDetails,String cPrice,Integer gouwuche,Model model) throws Exception {
		model.addAttribute("cName", cName);
		model.addAttribute("cDetails", cDetails);
		model.addAttribute("cPrice", cPrice);
		model.addAttribute("myInfos", userService.getUser(gouwuche));
		return "confirmOrder";
	}
}
