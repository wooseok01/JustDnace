package com.justDance.mvmnt;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.justDance.mvmt.model.Dancers;
import com.justDnace.mvmt.dao.DancersDao;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private DancersDao dancersDao;
	
	
	public DancersDao getDancersDao() {return dancersDao;}
	public void setDancersDao(DancersDao dancersDao) {this.dancersDao = dancersDao;}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "/mvmnt/index";
	}
	
	@RequestMapping(value="/about", method = RequestMethod.GET)
	public String about(){
		
		return "/mvmnt/about";
	}
	
	@RequestMapping(value="/archive", method = RequestMethod.GET)
	public String archive(){
		return "/mvmnt/archive";
	}
	
	@RequestMapping(value="/dancers", method = RequestMethod.GET)
	public String dancers(Model model){
		
		ArrayList<Dancers> dancerList;
		dancerList = dancersDao.getAllDancersInfo();
		model.addAttribute("dancerList", dancerList);
		
		return "/mvmnt/dancers";
	}
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public String contact(){
		return "mvmnt/contact";
	}
	
	@RequestMapping(value="/careerList", method = RequestMethod.POST)
	@ResponseBody
	public JSONArray getCareerList(@RequestParam("name") String name){
		JSONArray jsonArr = null;
		
		ArrayList<String> careerList = dancersDao.getCareerList(name);
		System.out.println(careerList);
		jsonArr = JSONArray.fromObject(careerList);
		System.out.println(jsonArr);
		
		return jsonArr;
	}
	
	@RequestMapping(value="/personalData", method = RequestMethod.POST)
	@ResponseBody
	public JSONObject getPersonalData(@RequestParam("name") String name){
		JSONObject jsonObj = null;
		
		Dancers dancersObj = dancersDao.getPersonalData(name);
		jsonObj = JSONObject.fromObject(dancersObj);
		return jsonObj;
	}
	
	@RequestMapping(value="/educationData", method = RequestMethod.POST)
	@ResponseBody
	public JSONArray getEducationData(@RequestParam("name") String name){
		JSONArray jsonArr = null;
		
		ArrayList<String> educationList = dancersDao.getEducationData(name);
		jsonArr = JSONArray.fromObject(educationList);
		
		return jsonArr;
	}
}
