package com.ijoy.plat.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ijoy.common.comutil.Ajaxresult;
import com.ijoy.plat.domain.Sysloginfo;
import com.ijoy.plat.query.SysloginfoQuery;
import com.ijoy.plat.service.ISysloginfoService;


@Controller
@RequestMapping("/sysloginfo")
public class SysloginfoController {

	@Autowired
	private ISysloginfoService service;

	@RequestMapping(method=RequestMethod.GET)
	public  ModelAndView  list(@ModelAttribute SysloginfoQuery  baseQuery){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("sysloginfo/list");
		mv.addObject("pageResult", service.queryPage(baseQuery));
		return mv;
	}
	
	//修改单个
	@RequestMapping(value="/{id}",params="type=goUpdate",method=RequestMethod.GET)
	public String goUpdate(@PathVariable Long id){
		Sysloginfo sysloginfo=service.get(id);	
		return "sysloginfo/input";
	}
	
	//更新单个
	
	@RequestMapping(value="/{id}",params="type=update",method=RequestMethod.GET)
	public Ajaxresult update(@ModelAttribute Sysloginfo sysloginfo){
		return null;
	}
	//进入新增单个
	@RequestMapping(params="type=goSave",method=RequestMethod.GET)
	public String goSave(){
		return "sysloginfo/input";
	}
	
	//保存单个
	@RequestMapping(method=RequestMethod.POST)
	public Ajaxresult save(@ModelAttribute Sysloginfo sysloginfo){
		return null;
	}
	//删除单个
	@RequestMapping(value="/{id}",params="type=delete",method=RequestMethod.GET)
	public Ajaxresult delete(@PathVariable Long id){
		try {
			service.delete(id);
			return new Ajaxresult(true, "删除成功");
		} catch (Exception e) {
			return new Ajaxresult(false, "删除失败");
		}
	}
	
	
	
	
	//批量删除
	@RequestMapping(value="/batch/ids",method=RequestMethod.GET)
	@ResponseBody
	public Ajaxresult deleteBatch(@PathVariable String ids){
		Ajaxresult ajaxResult;
		if(StringUtils.isEmpty(ids)){
			ajaxResult= new Ajaxresult(false, "请选中需要删除的用户");
			return ajaxResult;
		}
		String[] idArray = ids.split(",");
		try {
			for (String id : idArray) {
				if(!StringUtils.isEmpty(id)){
					
					service.delete(Long.getLong(id));
				}
			}
			ajaxResult=new Ajaxresult(true,"删除成功");
		} catch (Exception e) {
			ajaxResult=new Ajaxresult(false,"异常:" + e.getMessage());
		}
		return ajaxResult;
	}
	
}