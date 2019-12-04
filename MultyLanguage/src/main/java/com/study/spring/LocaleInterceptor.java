package com.study.spring;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// 사용자 정의 인터셉터는 반드시 HandlerInterceptorAdapter 를 상속받아야 한다.
public class LocaleInterceptor extends HandlerInterceptorAdapter{
	@Override
	// 컨트롤러 실행 전 호출됨
	public boolean preHandle(HttpServletRequest request,
		                 HttpServletResponse response, 
		                 Object handler) {
		
		HttpSession session=request.getSession();
		
		// 브라우저에서 전달한 locale 정보를 가져온다.
		String locale=request.getParameter("locale");
		
		// 최초 요청 시 locale 를 한국어로 설정한다.
		if(locale==null) locale="ko";
		
		// LOCALE 속성 값을 세션에 저장해 SessionLocaleResolver 가 사용할 수 있게 된다.
		session.setAttribute("org.springframework.web.servlet.i18n.SessionLocaleresolver.LOCALE",
				              new Locale(locale));
		return true;
	}
	
	//  컨트롤러 실행 후 호출됩니다.
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			               Object handler, ModelAndView modelAndView) throws Exception {
		
	}
	
	// 부(JSP) 를 수행한 후 호출됩니다.
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			               Object handler, Exception ex) throws Exception {
		
	}
}
