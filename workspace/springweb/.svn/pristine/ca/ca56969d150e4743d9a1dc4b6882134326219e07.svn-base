package springweb.a03_data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import springweb.a03_data.service.A03_MemberService;
import springweb.z01_vo.Member;

/*
# spring에서 session 설정..
1. controller단위로 session을 설정할 수 있게 모듈을 지원하고 있다.
2. 형식.. 
	1) controller 선언 부분 SessionAttribute("모델")
	로 annotation 설정..
	2) 공통 메서드로 해당 session 객체로 처리할 객체를 모델이름으로
		return하게 처리.
*/
@Controller
@SessionAttributes("mem")
@RequestMapping("/member.do")
public class A03_MemberCtrl {
	@ModelAttribute("mem")
	public Member getMember() {
		return new Member();
	}

	@Autowired(required=false)
	private A03_MemberService service;
	
	// /member.do?method=loginForm
	@RequestMapping(params="method=loginForm")
	public String loginForm() {	
		return "WEB-INF\\view\\a03_data\\b01_login.jsp";
	}
	// modelattribute :
	// 1. 요청처리 객체  + model
	// 2. modelAttribute 처리가 되면,  controller 단위로 session값을 설정하여
	//   처리할 수 있다..   SessionAttributes객체 활용한다..
	@RequestMapping(params="method=login")
	public String login(@ModelAttribute("mem") Member mem) {

		
		Member m=null;
		// 초기 로그인 화면인지 여부를 check
		if(mem.getId()!=null) {
			// DB 처리를 통해서 데이터를 확ㅇ니
			m= service.login(mem);
		}
		System.out.println(m!=null?"로그인 성공":"로그인 실패");
		// 초기 페이지 설정
		String page = "b01_login.jsp";
		// 데이터 있으면...(DB)
		if( m!=null) {
			// 메인 페이지 이동
			page = "b02_main.jsp";
			// model 데이터 설정..(요청객체+모델객체):modelattribute
			mem.setName(m.getName());
			mem.setAuth(m.getAuth());
			mem.setPoint(m.getPoint());
		}
		return "WEB-INF\\view\\a03_data\\"+page;
	}
	
	
}




