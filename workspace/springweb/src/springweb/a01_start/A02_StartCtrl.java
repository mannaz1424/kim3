package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//springweb.a01_start.A02_StartCtrl 
@Controller
public class A02_StartCtrl {
	
	@RequestMapping("/start2.do")
	public String call() {
		return "WEB-INF\\view\\a01_start\\a02_call.jsp";
	}
	// buy.do?price=3000&cnt=2
	/*	
	ex) buy.do?price=3000&cnt=2 로
	화면에 
	물건가격 : @@@ 갯수는 @@
	총비용은 @@@
	
	1. url :http://localhost:7080/buy.do?price=###&cnt=###
	2. 요청값 처리. RequestParam("price") int price
	3. 모델 데이터 : 화면에 넘겨줄 핵심 데이터
	4. view 화면 호출
	*/
	@RequestMapping("/buy.do")
	public String buy(@RequestParam("price") int price,
					  @RequestParam("cnt") int cnt,
					  Model d) {
		d.addAttribute("tot", price*cnt);
		return "WEB-INF\\view\\a01_start\\a04_buy.jsp";
	}

}
