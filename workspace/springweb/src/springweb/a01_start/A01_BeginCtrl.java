package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/*
# 스프링에서 controller의 선언 규칙
1. 클래스에서 controller라고 표시하는 annotation을 선언해준다.
2. dispather-servlet.xml에 등록해준다.(추후에 자동등록 설정이 가능)
	springweb.a01_start.A01_BeginCtrl
	메모리에 웹어플리케이션 서버가 시작할 때, 객체가 로딩되어 사용하게 해준다. 
3. 호출 url형식을 메서드 별로 선언해준다.
	RequestMapping("url패턴")
4. 메서드별로 연결된 jsp단을 호출 처리한다.

*/
@Controller
public class A01_BeginCtrl {
	
	
	// url을 pattern을 정의하여, 해당 pattern으로 url을 호출했을때,
	// 메서드가 호출되고 연결되 view(*.jsp)가 호출될 수 있게 한다.
	// http://localhost:7080/springweb/start.do
	// 에서, start.do를 호출할 때, 아래 정의된 메서드 호출 처리..
	/*	
	# 메서드 선언 규칙..
	public String 메서드명(요청값처리객체, Model d){
		1. 요청값 로직처리.
		2. model 데이터처리
		3. return "jsp단 호출-jsp가 선언된 위치."
	}
	# view단을 외부에서 바로 접근할 수 없는 보안상 강력한 위치에 지정.
	1. 해당 폴드
		WebContent\WEB-INF
	*/	
	@RequestMapping("/start.do")
	public String start() {
		// 1. 요청 처리.
		// 2. model 처리
		// 3. view 호출
		return "WEB-INF/view/a01_start/a01_begin.jsp";
	}
	/*	
	A02_StartCtrl.java 생성.
	  메서드 
	  public String call()
	view jsp
	  WebContent\WEB-INF\view\a02_call.jsp
	  로 스프링으로 화면이 호출되게 처리하세요.
	
	*/
	// 1. 요청값
	//    req.do?num01=25&num02=30
	// 2. model 데이터(jsp 뷰에 넘겨줄 핵심 데이터)
	// 3. 형식
	//    public String  메서드명(요청key 데이터유형 변수,
	//                          Model d
	@RequestMapping("/req.do")
	public String req(
			@RequestParam("num01") int num01,
			@RequestParam("num02") int num02,
			Model d
			) {
		System.out.println("num01:"+num01);
		String cal = num01+" + "+num02+" = "+(num01+num02);
		// Model : view단에 넘겨줄 핵심 데이터..
		// jsp에서는 ${calResult}를 받아서 처리 할 수 있다.
		d.addAttribute("calResult", cal);
		
		return "WEB-INF\\view\\a01_start\\a03_calculator.jsp";
	}
	
	
}
