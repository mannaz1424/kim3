package springweb.a03_data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springweb.a03_data.service.A02_DeptService;
import springweb.z01_vo.Dept;

@Controller
@RequestMapping("/dept.do") // controller의 공통
public class A02_DeptCtrl {
	@Autowired(required=false)
	private A02_DeptService service;
	// ex) 부서정보 처리화면이 출력 되도록 하세요..
	//     부서명, 부서위치로 검색되게 처리...
	// // /dept.do?method=list
	@RequestMapping(params = "method=list") // 기능별로 요청값처리..
	public String deptList(Dept sch, Model d) {
		
		d.addAttribute("dlist", service.deptList(sch));
		return "WEB-INF\\view\\a03_data\\a02_deptlist.jsp";
	}
	// /dept.do?method=reg
	@RequestMapping(params = "method=regForm")
	public String form() {
		return "WEB-INF\\view\\a03_data\\a03_deptInsert.jsp";
	}
	// method=insert
	@RequestMapping(params ="method=insert")
	public String insert(Dept ins) {
		System.out.println("부서이름:"+ins.getDname());
		service.insertDept(ins);
		// 등록 후 바로 조회 처리..있는 controller단 호출..
		// 요청값 ?deptno=@@&dname=##&loc=@@@
		// 1. redirect:// controller이름  : 요청값을 넘기지 않고 controller 호출
		// 2. forward:// controller이름  : 요청값을 넘기면서 controller 호출
		return "redirect:/dept.do?method=list";
	}
	@RequestMapping(params ="method=insAjax")
	public String insAjax(Dept ins, Model d) {
		System.out.println("부서이름:"+ins.getDname());
		service.insertDept(ins);
		
		d.addAttribute("ok", "ok");
		
		return "pageJsonReport";
	}	
	
	
	
	
	
	
	
	
	
}
