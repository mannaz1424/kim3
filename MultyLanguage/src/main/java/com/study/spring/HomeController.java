package com.study.spring;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    SessionLocaleResolver localeResolver;

    @Autowired
    MessageSource messageSource;


    @RequestMapping(value = "/i18n.do", method = RequestMethod.GET)
    public String i18n(Locale locale, HttpServletRequest request, Model model) {

        // RequestMapingHandler로 부터 받은 Locale 객체를 출력해 봅니다.
        logger.info("Welcome i18n! The client locale is {}.", locale);

        // localeResolver 로부터 Locale 을 출력해 봅니다.
        logger.info("Session locale is {}.", localeResolver.resolveLocale(request));

        logger.info("site.title : {}", messageSource.getMessage("site.title", null, "default text", locale));
        logger.info("site.count : {}", messageSource.getMessage("site.count", new String[] {"첫번째"}, "default text", locale));
        logger.info("not.exist : {}", messageSource.getMessage("not.exist", null, "default text", locale));
        //logger.info("not.exist 기본값 없음 : {}", messageSource.getMessage("not.exist", null, locale));

        // JSP 페이지에서 EL 을 사용해서 arguments 를 넣을 수 있도록 값을 보낸다.

        model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale));

        return "i18n";
    }
    
    /*
    public void loginSuccess(HttpServletRequest request,HttpServletResponse response,
                             Authentication authentication) {

	LoginUser loginUser = (LoginUser) authentication.getPrincipal();
	*/
	/**
	* 다국어 적용을 위한  초기 언어 설정
	* 
	if(loginUser.getLangCode().equals("zh_CN")) {
	Locale locale = new Locale("zh","CN");
	SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
	sessionLocaleResolver.setLocale(request,response,locale);
	}
	else if(loginUser.getLangCode().equals("en")) {
	Locale locale = new Locale("en");
	SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
	sessionLocaleResolver.setLocale(request,response,locale);
	}
	else {
	Locale locale = new Locale("ko");
	SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
	sessionLocaleResolver.setLocale(request,response,locale);
	}
    */
    
    
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
}