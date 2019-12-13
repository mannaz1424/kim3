package kr.or.databiz.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.databiz.service.TestService;

@Controller
public class TestController {

	@Autowired
	private TestService testService;
	
	@Value("${spring.profile.value}")
	private String profile;

	@RequestMapping("/")
	public @ResponseBody HashMap<String, String> test(HttpServletRequest request) {
		HashMap<String, String> map = new HashMap<>();

		System.out.println(testService.accounts());
		
		map.put("hello", profile);
		
		

		return map;
	}
	
	@RequestMapping("/test")
	public String test2(HttpServletRequest request) {
		HashMap<String, String> map = new HashMap<>();

		System.out.println(testService.accounts());
		
		map.put("hello", profile);
		
		

		return "test";
	}
}
