package springweb.z01_vo;

import java.util.ArrayList;

public class Mart {
	private String mname;
	private Product product;
	// 1. 1:다 관계를 위한 ArrayList<Product> 선언
	// 2. 해당 list객체를 할당하는 property 선언..
	private ArrayList<Product> plist;
	
	public Mart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Mart(String mname) {
		super();
		this.mname = mname;
	}
	public Mart(String mname, Product product) {
		this.mname = mname;
		this.product = product;
	}
	/*
   @@@ 마트에서 
   @@@을  @@개  @@가격으로 구매하여
     총 비용이 @@@원입니다.
	*/	
	public void goMart() {
		System.out.println(mname+"마트에서");
		if(product!=null) {
			System.out.print(product.getName()+"을 ");
			System.out.print(product.getCnt()+"개 ");
			System.out.println(product.getPrice()+"원 가격으로 구매하여 ");
			int tot = product.getPrice()*product.getCnt();
			System.out.println("총 비용이 "+tot+"원 입니다!");
		}
	}
	public void goMartMuti() {
		System.out.println(mname+"마트에서 ");
		if(plist!=null && plist.size()>0) {
			System.out.println("## 구매  목록 ## ");
			int tot=0;
			for(Product p:plist) {
				tot+=p.buy();
			}
			System.out.println("총비용은 "+tot+"원 입니다!!");
		}
	}
	public ArrayList<Product> getPlist() {
		return plist;
	}
	// xml에서 해당 메서드를 통해, 여러 객체를 할당 처리한다.
	// <property name="plist">
	//     <list>
	//     	  <ref bean="p01">
	//     	  <ref bean="p02">
	//     	  <ref bean="p03">
	public void setPlist(ArrayList<Product> plist) {
		this.plist = plist;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
