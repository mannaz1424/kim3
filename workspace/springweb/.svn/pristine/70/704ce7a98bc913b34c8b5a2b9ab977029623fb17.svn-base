package springweb.a01_start;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.z01_vo.Book;
import springweb.z01_vo.Dept;
import springweb.z01_vo.Emp;
import springweb.z01_vo.Person;
import springweb.z01_vo.Product;

@Controller
public class A04_ModelExp {
	
	// 초기 화면을 호출..
	@RequestMapping("/modelExp.do")
	public String modelExp(Model d) {
		d.addAttribute("p", new Product("사과",3000,2));
		return "WEB-INF\\view\\a01_start\\a07_model.jsp";
	}
	// 화면에서 ajax로 json데이터를 호출하는 부분
	@RequestMapping("/callJson.do")
	public String callJson(Model d) {
		
		// ajax의 success메서드에서  success:function(data){}
		// data parameter 에 들어갈 객체를 전달해준다.
		// data.p01으로  {"name":"홍길동","age":25,"loc":"서울 노량진"}
		// 객체 json형식으로 할당처리..
		// data.p01.name ==> "홍길동"
		// data.p01.age ==> 25
		d.addAttribute("p01", 
				new Person("홍길동",25,"서울 노량진"));
		// {"p01":{"name":"홍길동","age":25,"loc":"서울 노량진"}}
		
		return "pageJsonReport";
	}
// ajax 화면 초기 화면 호출.
	@RequestMapping("/modelExp2.do")
	public String modelExp2() {
		
		return "WEB-INF\\view\\a02_ajax\\a01_choiceView.jsp";
	}
	// ajax를 통해서 요청값에 의한 json 데이터 선택 처리..
	@RequestMapping("/chData.do")
	public String chData(@RequestParam("chData") String chData, Model d) {
		System.out.println("선택데이터:"+chData);		
		if(chData.equals("사원정보")) {
			ArrayList<Emp> list = new ArrayList<Emp>();
			list.add(new Emp(7000,"홍길동","사원",8000,3000.0,10));
			list.add(new Emp(7001,"신길동","대리",8001,4000.0,20));
			list.add(new Emp(7002,"마길동","과장",8002,5000.0,30));
			d.addAttribute("emp", list);
		}
		if(chData.equals("부서정보")) {
			ArrayList<Dept> list = new ArrayList<Dept>();
			list.add(new Dept(10,"인사","서울"));
			list.add(new Dept(20,"총무","대구"));
			list.add(new Dept(30,"it사업","광주"));
			d.addAttribute("dept", list);
		}
		
		
		return "pageJsonReport";
	}
	/*	
ex) 확인예제..
	A05_JSonData.java
	a02_ajax\a02_choiceView.jsp	
		  쇼핑갈 사이트
		()마트 ()서점
		선택에 따라  물건 /책  list를 출력처리하세요.
	*/	
	@RequestMapping("/chData2.do")
	public String chData(Book[] blist, Model d) {
		System.out.println("도서크기:"+blist.length);
		
		return "pageJsonReport";
	}	
	
	
	
	
	
	
	
	
}
