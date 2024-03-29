package com.test.web.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.test.web.websocket.handler.EchoHandler;

@Controller
public class IndexController {
	
    /*
	@RequestMapping("/")
	public String index(String mbId, MemberBean memberBean, Model model) {
		System.out.println("mbId: " + mbId);
		System.out.println("mbId: " + memberBean.getMbId());
		
		model.addAttribute("memberBean", memberBean);
		model.addAttribute("mbId", mbId);
		
		return "index";
	}
	*/
	
	@RequestMapping("/index/hello")
	public String hello() {
		return "/hello/hello";
	}
	
	
	@RequestMapping("/socket2.do")
	public ModelAndView index(ModelAndView mav) {
		
		mav.setViewName("websocket/wsclient2");
		mav.addObject("wsHandleUrl", EchoHandler.URL_WEBSOCKET_HANDLER);
		
		return mav;
	}
}
