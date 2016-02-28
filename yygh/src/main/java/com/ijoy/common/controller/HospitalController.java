package com.ijoy.common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ijoy.common.comutil.Ajaxresult;
import com.ijoy.common.query.HospitalQuery;
import com.ijoy.common.service.HospitalService;

@Controller
@RequestMapping("/hospital")
public class HospitalController {
	@Autowired
	HospitalService hospitalService;
	
	/**
	 * 
	 * @return
	 * @throws Exception
	 * index/main.jsp   根据城市id来获得医院的json
	 */
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public Ajaxresult search(@ModelAttribute HospitalQuery baseQuery) throws Exception{
		System.out.println(baseQuery);
		System.out.println(baseQuery.getLevels());
		List hospitals = hospitalService.queryHospital(baseQuery).getRows();
		return new Ajaxresult(true,hospitals);
	}
	
	@RequestMapping(params="type=html",method=RequestMethod.GET)
	public ModelAndView  show() throws Exception{
		ModelAndView mv = new ModelAndView("hospital/hospital-search");
	return mv;
	}
	
	
	
	@RequestMapping(value="/{id}",params="type=html",method=RequestMethod.GET)
	public String show(@PathVariable Long id) throws Exception{
		
		return "hospital/show";
	}
	
	

}
