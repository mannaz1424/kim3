package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.AnnoProduct;
import springweb.z01_vo.Man;
import springweb.z01_vo.Mart;

public class A06_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("springweb\\a02_di\\diexp06.xml");

		// 1. xml 파일을 Resource 객체로 할당.
		// 2. BeanFactory를 통해 할당.

		// 3. 해당 객체 가져오기..
		Man m01 = ctx.getBean("man",Man.class); 
		m01.show();
		Mart mart = ctx.getBean("m01",Mart.class);  
		mart.goMart();
		AnnoProduct anno = ctx.getBean("anno",AnnoProduct.class);
		anno.prodInfo();
		
		
	}

}
