package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.Product;

public class A02_DIExp {

	public static void main(String[] args) {
		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp02.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		Product prod1 = (Product)bean.getBean("prod1");
		Product prod2 = (Product)bean.getBean("prod2");
		prod1.buy();
		prod2.buy();
	
		
		
	}

}
