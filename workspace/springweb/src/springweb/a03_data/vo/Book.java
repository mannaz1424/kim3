package springweb.a03_data.vo;

public class Book {
	private int recid;
	private String name;
	private String author;
	private String publisher;
	private int price;
	private int point;
	
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(int recid, String name, String author, String publisher, int price, int point) {
		super();
		this.recid = recid;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.price = price;
		this.point = point;
	}



	public int getRecid() {
		return recid;
	}
	public void setRecid(int recid) {
		this.recid = recid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	
	
}
