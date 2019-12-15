package springweb.z01_vo;

import org.springframework.beans.factory.annotation.Autowired;

public class AutoBookStore {
	private String bname;
	@Autowired
	private Book bk;
	
	public AutoBookStore() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AutoBookStore(String bname) {
		super();
		this.bname = bname;
	}
	
	public void buyBook() {
		System.out.println(bname);
		if(bk!=null) bk.buy();
	}
	

}
