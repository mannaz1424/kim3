package springweb.a03_data.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.a03_data.vo.Book;

@Repository
public interface A05_BookDao {
	// table --> 데이터입력 --> mapperBook.xml --> mybatis.Spring.xml
	
	public ArrayList<Book> blist();
	//  mapperBook.xml ==> service ==> controller
	public void insertBook(Book insert);
	//mapperBook.xml ==> service ==> controller
	// 수정 sql 처리.
	public void updateBook(Book update);
	// 삭제 sql 처리..
	public void deleteBook(int recid);
	
	
	
}
