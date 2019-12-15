package springweb.a01_start;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.z01_vo.Book;
import springweb.z01_vo.Dept;
import springweb.z01_vo.Emp;
import springweb.z01_vo.Product;

@Controller
public class A06_JSONExp {
	@RequestMapping("/jsonData2.do")
	public String jsonData2() {
		return "WEB-INF\\view\\a02_ajax\\a03_jsonExpView.jsp";
	}
	@RequestMapping("/sch.do")
	public String sch(@RequestParam("sch") String sch, Model d) {
		System.out.println("검색데이터:"+sch);
		if(sch.equals("서점")) {
			ArrayList<Book> blist = new ArrayList<Book>();
			blist.add(new Book("스프링 고급",30000,3));
			blist.add(new Book("jquery 고급",32000,2));
			blist.add(new Book("jsp 기초",28000,1));			
			d.addAttribute("list", blist);
		}else if(sch.equals("마트")) {
			ArrayList<Product> list = new ArrayList<Product>();
			list.add(new Product("사과",3000,2));
			list.add(new Product("바나나",4000,3));
			list.add(new Product("딸기",12000,4));
			d.addAttribute("list", list);
		}else if(sch.equals("부서")) {
			ArrayList<Dept> list = new ArrayList<Dept>();
			list.add(new Dept(10,"인사","서울"));
			list.add(new Dept(20,"총무","대구"));
			list.add(new Dept(30,"it사업","광주"));			
			
			d.addAttribute("list", list);
		}else if(sch.equals("사원")) {
			ArrayList<Emp> list = new ArrayList<Emp>();
			list.add(new Emp(7000,"홍길동","사원",8000,3000.0,10));
			list.add(new Emp(7001,"신길동","대리",8001,4000.0,20));
			list.add(new Emp(7002,"마길동","과장",8002,5000.0,30));
			
			d.addAttribute("list", list);
		}else {
			d.addAttribute("list", "없는 데이터 입니다.");
		} 
		
		return "pageJsonReport";
	}
}
