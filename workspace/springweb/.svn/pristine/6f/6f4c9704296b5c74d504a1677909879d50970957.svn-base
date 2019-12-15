package springweb.z01_vo;

import org.springframework.beans.factory.annotation.Autowired;

public class AnnoProduct {

//	1. xml에서  context:annotation-config 을 선언하고.
//	2. xml에서 autowire할 내용을 선언하지 않고, class에서 선언하여,
//	3. 객체가 생성될 때, annotation으로 Autowired 선언된 객체는
//     자동으로 할당되게 처리한다.
//  4. new 객체명()을 할 필요가 없어진다. 
	@Autowired
	private Product prod; // 외부 객체가 생성되어 있으면..
	/// 현재 라인에서 prod = new Product();로 할당되어는 효과가 있다.
	// field로도, 메서드에도 선언하여 할당할 수 있다.
	
	private String show;
	
	public AnnoProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Autowired
	public void setProduct(Product prod) {
		this.prod = prod;
	}

	public AnnoProduct(String show) {
		this.show = show;
	}
	public void prodInfo() {
		System.out.println(show);
		if(prod!=null) prod.buy();
	}


	
}
