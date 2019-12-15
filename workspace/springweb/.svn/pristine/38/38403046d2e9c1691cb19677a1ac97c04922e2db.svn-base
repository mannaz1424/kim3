package springweb.d01_ajax;

import org.springframework.stereotype.Controller;
// 1. annotation 선언
// 2. dispatcher-servlet.xml에 등록
// 3. 요청 url 선언(메서드별)
// 4. view 단 return (메서드별)
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

// springweb.d01_ajax.A01_AjaxReqCtrl
@Controller
public class A01_AjaxReqCtrl {
	@RequestMapping("/ajax00.do")
	public String ajax00() {
		return "a02_jqAjax\\a05_reqAjax.jsp";
	}
	// 문자열을 return하기 위한  annotation 설정
	// /ajax01.do?num01=@@&num02=@@
	@ResponseBody
	@RequestMapping("/ajax01.do")
	public String ajax01(@RequestParam("num01") int num01,
						 @RequestParam("num02") int num02
						) {
		System.out.println("num01:"+num01);
		System.out.println("num02:"+num02);
		int plus = num01+num02;
		return "^^ calcu:"+num01+" + "
				+num02+" = "+plus;
	}
	// ex) A02_AjaxExp2Ctrl.java
	//     a06_reqAjax.jsp
	//    물건가격, 갯수 입력할 때,
	//    총금액    @@원  @@ 개  총 @@@ 출력
}
