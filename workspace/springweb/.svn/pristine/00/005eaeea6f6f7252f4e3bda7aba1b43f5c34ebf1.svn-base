package springweb.d01_ajax;
// 1. 클래스 생성
// 2. Annotation 설정(Controller)
// 3. xml에 클래스 등록으로 객체 생성.
// 4. RequestMapping으로 url 패턴 설정(메서드)
// 5. view(jsp) 호출..

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

// 6. view에서 ajax 전달값에 맞는 메서드 url 패선 설정.
// 7. annotaion(responseBody)
// 8. 요청값 처리 requestParam
// 9. 전달할 값 처리.  

// springweb.d01_ajax.A02_AjaxExp2Ctrl 
@Controller
public class A02_AjaxExp2Ctrl {

	@RequestMapping("/ajax02.do")
	public String ajax02() {
		return "a02_jqAjax\\a06_reqAjax.jsp";
	}
	@ResponseBody
	@RequestMapping("/ajax03.do")
	public String ajax03(
				@RequestParam("name") String name,
				@RequestParam("price") int price,
				@RequestParam("cnt") int cnt
			) {
		// {"속성":"문자열값", "속성",숫자}
		
		System.out.println("물건명:"+name);
		System.out.println("가격:"+price);
		System.out.println("갯수:"+cnt);
		
		return "{\"name\":\""+name+"\",\"price\":"+price
				+",\"cnt\":"+cnt+",\"tot\":"+price*cnt+"}";
	}
// ex) A03_AjaxExp3Ctrl.java
//     a07_reqAjax.jsp
//     등록여부 확인
///    회원아이디[    ] - 등록된아이디/등록가능합니다.
	
}
