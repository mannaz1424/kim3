package springweb.z01_vo;
// springweb.z01_vo.Book
public class Book {
	private String name;
	private int price;
	private int cnt;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String name, int price, int cnt) {
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	public int buy() {
		System.out.print(name+"\t");
		System.out.print(price+"\t");
		System.out.print(cnt+"\n");
		return price*cnt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
