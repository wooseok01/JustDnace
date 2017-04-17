package com.justDance.mvmnt;

import java.util.ArrayList;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.justDance.mvmt.model.Dancers;
import com.justDnace.mvmt.dao.DancersDao;

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
}
