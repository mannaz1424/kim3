package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
// springweb.a01_start.A03_ReqObjectCtrl
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import springweb.z01_vo.Member;
import springweb.z01_vo.Person;
@Controller
public class A03_ReqObjectCtrl {
	@RequestMapping("/objReq.do")
	public String form() {
		// @@.xml에서 접두어와 접미어를 선언했기때문에 생략하여야 
		return "WEB-INF\\view\\a01_start\\a05_reqObj.jsp";
	}
	@ResponseBody
	@RequestMapping("/regMem.do")
	public String regMem(Member ins) {
		// 객체로 받을 때는 name="auth" 
		// 해당 VO 객체에서 setAuth(String s) 메서드가 존재해야되고
		// 숫자형일 때는 반드시 숫자형 데이터를 입력하여야 한다.
		//     name="point" value="25"(O) ==> setPoint(int pnt)
		//                  value="삼십"(X)
		// 
		
		System.out.println(ins.getName());
		return "{\"isSucc\":true}";
	}
	@RequestMapping("/show.do")
	public String show(Model d) {
		// # Model를 통해서 view에 핵심데이터를 전달한다.
		// 1. .addAttribute("key", 객체)
		//    --> view단에서 ${key.property}로 접근
		d.addAttribute("p01", 
			new Person("홍길동",25,"서울 노량진"));
		return "WEB-INF\\view\\a01_start\\a06_model.jsp";
	}
	// ex) A04_ModelExp.java
	//      controller에서 Product로 Model로 물건명,가격, 갯수
	//      설정해서 view에 전달 처리하여, jsp에서 출력되게 하세요.
	//   WEB-INF\view\a01_start\a07_model.jsp
	
	
	
	
	
}
