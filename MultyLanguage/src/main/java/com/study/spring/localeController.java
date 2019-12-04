package com.study.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("localeController")
public class localeController {
	
	@RequestMapping(value="test/locale.do", method= {RequestMethod.GET})
	public String locale(HttpServletRequest request,
			             HttpServletResponse response) throws Exception{
		System.out.println("localeController 입니다.");
		
		// 컨트롤러는 뷰 이름만 반환합니다.
		return "locale";
	}

}
