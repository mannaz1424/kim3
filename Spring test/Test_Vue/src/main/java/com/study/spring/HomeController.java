package com.study.spring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	// private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	*/
	
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		
//		return "test_vue";
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "test_vue08";
	}
	
	@RequestMapping(value = "/01", method = RequestMethod.GET)
	public String test_vue01() {
		
		return "test_vue01";
	}
	@RequestMapping(value = "/02", method = RequestMethod.GET)
	public String test_vue02() {
		
		return "test_vue02";
	}
	@RequestMapping(value = "/03", method = RequestMethod.GET)
	public String test_vue03() {
		
		return "test_vue03";
	}
	@RequestMapping(value = "/04", method = RequestMethod.GET)
	public String test_vue04() {
		
		return "test_vue04";
	}
	@RequestMapping(value = "/05", method = RequestMethod.GET)
	public String test_vue05() {
		
		return "test_vue05";
	}
	@RequestMapping(value = "/06", method = RequestMethod.GET)
	public String test_vue06() {
		
		return "test_vue06";
	}	
	@RequestMapping(value = "/07", method = RequestMethod.GET)
	public String test_vue07() {
		
		return "test_vue07";
	}
	@RequestMapping(value = "/08", method = RequestMethod.GET)
	public String test_vue08() {
		
		return "test_vue08";
	}
}
