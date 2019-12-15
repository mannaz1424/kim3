package springweb.a03_data.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a03_data.service.A05_BookService;
import springweb.a03_data.vo.Book;

@Controller
@RequestMapping("/board2.do")
public class A05_JQPlugCtrl {
	@Autowired(required=false)
	private A05_BookService service;
	
	// /board2.do?method=list
	@RequestMapping(params="method=list")
	public String boardList() {
		return "WEB-INF\\view\\a03_data\\c10_pluginBoardList.jsp";
	}
	@RequestMapping(params="method=data")
	public String boardData(Model d) {
		d.addAttribute("blist", service.blist());
		
		return "pageJsonReport";
	}
	// method=insert
	@RequestMapping(params="method=insert")
	public String boardInsert(Book insert, Model d) {
		System.out.println("등록할 도서명:"+insert.getName());
		service.insertBook(insert);
		
		d.addAttribute("isSuccess", "ok");
		
		return "pageJsonReport";
	}	
	// method=update
	@RequestMapping(params="method=update")
	public String boardUpdate(Book update, Model d) { 
		System.out.println("변경할 도서명:"+update.getName());
		service.updateBook(update);
		d.addAttribute("isSuccess", "ok");
		return "pageJsonReport";
	}	
	// method=delete
	@RequestMapping(params="method=delete")	
	public String boardDelete(@RequestParam("recid") int recid, Model d) {
		System.out.println("삭제할 데이터:"+recid);
		service.deleteBook(recid);
		d.addAttribute("isSuccess", "ok");
		return "pageJsonReport"; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
