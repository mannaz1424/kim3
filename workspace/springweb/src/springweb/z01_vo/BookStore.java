package springweb.z01_vo;

import java.util.ArrayList;
// springweb.z01_vo.BookStore
public class BookStore {
	private String name;
	private ArrayList<Book> blist;
	private Book bk;
	
	public BookStore() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookStore(String name) {
		this.name = name;
	}
	public void buyList() {
		System.out.println(name+"서점에서 구매한 도서 목록");
		
		if(blist!=null && blist.size()>0) {
			int tot = 0;
			for(Book bk:blist) {
				tot+=bk.buy();
			}
			System.out.println("총 구매 금액:"+tot+"원");
		}
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Book> getBlist() {
		return blist;
	}

	public void setBlist(ArrayList<Book> blist) {
		this.blist = blist;
	}

	public Book getBk() {
		return bk;
	}

	public void setBk(Book bk) {
		this.bk = bk;
	}
	public void buyBook() {
		System.out.println(name+"에서 산 도서 한권!");
		if(bk!=null) bk.buy();
	}
	
}
