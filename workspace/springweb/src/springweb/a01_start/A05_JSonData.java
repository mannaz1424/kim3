package springweb.a01_start;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.z01_vo.Book;
import springweb.z01_vo.Product;

@Controller
public class A05_JSonData {

	// 초기화면 로딩 페이지 호출 메서드
	@RequestMapping("/jsonData.do")
	public String jsonData() {
		
		return "WEB-INF\\view\\a02_ajax\\a02_choiceView.jsp";
	}
	// ajax 처리 메서드
	@RequestMapping("/site.do")
	public String site(@RequestParam("site") String site, Model d) {
		System.out.println("선택:"+site);
		if(site.equals("마트")) {
			
			//d.addAttribute("mart", 
			//		new Product("사과",3000,2));
			// {name:"사과",price:3000,cnt:2}
			ArrayList<Product> list = new ArrayList<Product>();
			list.add(new Product("사과",3000,2));
			list.add(new Product("바나나",4000,3));
			list.add(new Product("딸기",12000,4));
			d.addAttribute("mart", list);
			/*
			 [{name:"사과",price:3000,cnt:2},
			  {name:"바나나",price:4000,cnt:3},
			  {name:"딸기",price:12000,cnt:4}] 
			 */
		}
		if(site.equals("서점")) {
			//d.addAttribute("bkstore", 
			//		new Book("스프링 고급",30000,1));
			// {name:"스프링 고급",price:30000,cnt:1}
			// 1. 한글 ending, " " ==> %
			// 2. parse  Object ==> Json {"":""}
			ArrayList<Book> blist = new ArrayList<Book>();
			blist.add(new Book("스프링 고급",30000,3)); 
			blist.add(new Book("jquery 고급",32000,2));
			blist.add(new Book("jsp 기초",28000,1));
			d.addAttribute("bkstore", blist);
		}
		return "pageJsonReport";
	}
}
/*
EX) A06_JSONExp.java
	a02_ajax\a03_jsonExpView.jsp
	확인할데이터[   ] //서점/마트/부서/사원
	  키를 입력할 때, 위에 있는 항목이 있을 때,
	  해당 데이터 출력, 그외는 없는 데이터입니다.
	  라고 출력..
*/

