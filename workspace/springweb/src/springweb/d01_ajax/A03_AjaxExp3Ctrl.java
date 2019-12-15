package springweb.d01_ajax;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
// springweb.d01_ajax.A03_AjaxExp3Ctrl
@Controller
public class A03_AjaxExp3Ctrl {
	@RequestMapping("/ajax04.do")
	public String ajax04() {
		return "a02_jqAjax\\a07_reqAjax.jsp";
	}
	@ResponseBody
	@RequestMapping("/ajax05.do")
	public String ajax05(@RequestParam("id") String id) {
		
		String ret="{\"valid\":false}";
		if(!id.equals("himan777")) {
			ret="{\"valid\":true}";
		}
		
		return ret;
	}
	
	
}
