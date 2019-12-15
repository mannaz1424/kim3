package springweb.a02_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_vo.AnnoProduct;

public class A10_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		AbstractApplicationContext ctx = new GenericXmlApplicationContext("springweb\\a02_di\\diexp10.xml");
		AnnoProduct anno = ctx.getBean("anno",AnnoProduct.class);

		anno.prodInfo();
		
		
		
	}

}
