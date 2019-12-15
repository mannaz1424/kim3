package springweb.a03_data.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_data.dao.A05_BookDao;
import springweb.a03_data.vo.Book;

@Service
public class A05_BookService {
	@Autowired(required=false)
	private A05_BookDao dao;
	
	public ArrayList<Book> blist(){
		return dao.blist();
	}
	public void insertBook(Book insert) {
		dao.insertBook(insert);
	}
	public void updateBook(Book update) {
		dao.updateBook(update);
	}	
	public void deleteBook(int recid) {
		dao.deleteBook(recid);
	}
}








