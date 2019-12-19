package kr.or.databiz.controller;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class UiController {

	
	@Autowired
    MessageSource messageSource;
    
    @Autowired
    LocaleResolver localeResolver;
	
    /*
	@Value("${spring.profile.value}")
	private String profile;
	
	@RequestMapping("/")
	public @ResponseBody HashMap<String, String> test(HttpServletRequest request) {
		HashMap<String, String> map = new HashMap<>();
		
		map.put("hello", profile);
		
		

		return map;
	}
	*/
	
	@RequestMapping("/")
	public String test(HttpServletRequest request) {
		
		return "setting/7_04";
	}
	
	
	
	
	//   
	@RequestMapping("/7_01")
	public String view_7_01(HttpServletRequest request) {

		return "setting/7_01";
	}
	
	@RequestMapping("/7_01_01")
	public String view_7_01_01(HttpServletRequest request) {

		return "setting/7_01_01";
	}
	
	@RequestMapping("/7_02")
	public String view_7_02(HttpServletRequest request) {

		return "setting/7_02";
	}
	
	@RequestMapping("/7_03")
	public String view_7_03(HttpServletRequest request) {

		return "setting/7_03";
	}
	
	@RequestMapping("/7_04")
	public String view_7_04(HttpServletRequest request) {

		return "setting/7_04";
	}
	
	@RequestMapping("/7_04_01")
	public String view_7_04_01(HttpServletRequest request) {

		return "setting/7_04_01";
	}
	
	@RequestMapping("/7_05")
	public String view_7_05(HttpServletRequest request) {

		return "setting/7_05";
	}
	
	@RequestMapping("/7_06")
	public String view_7_06(HttpServletRequest request) {

		return "setting/7_06";
	}
	
	@RequestMapping("/7_07")
	public String view_7_07(HttpServletRequest request) {

		return "setting/7_07";
	}
	
	@RequestMapping("/7_08")
	public String view_7_08(HttpServletRequest request) {

		return "setting/7_08";
	}
	
	@RequestMapping("/7_09")
	public String view_7_09(HttpServletRequest request) {

		return "setting/7_09";
	}
	
	@RequestMapping("/7_10")
	public String view_7_10(HttpServletRequest request) {

		return "setting/7_10";
	}
	
	@RequestMapping("/7_11")
	public String view_7_11(HttpServletRequest request) {

		return "setting/7_11";
	}
	
	@RequestMapping("/7_12")
	public String view_7_12(HttpServletRequest request) {
		// HashMap<String, String> map = new HashMap<>();

//		System.out.println(testService.accounts());
		
		// map.put("hello", profile);	

		return "setting/7_12";
	}
	
	

	/*
	@RequestMapping(value = "/i18n.do", method = RequestMethod.GET) 
	public String i18n(Locale locale, HttpServletRequest request, Model model) { // RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다. 
		// RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다.
        model.addAttribute("clientLocale", locale);

        // localeResolver 로부터 Locale 을 출력해 봅니다.
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		
		// JSP 페이지에서 EL 을 사용해서 arguments 를 넣을 수 있도록 값을 보낸다. 
		model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale)); 
		
		return "test"; 
	}
	*/
}
