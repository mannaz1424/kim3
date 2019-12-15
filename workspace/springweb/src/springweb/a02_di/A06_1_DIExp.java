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

public class A06_1_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("springweb\\a02_di\\diexp06_1.xml");
		Man m01 = ctx.getBean("m01",Man.class); 
		m01.show();
		Mart mt01 = ctx.getBean("mt01", Mart.class);
		mt01.goMart();
		
		
	}

}
