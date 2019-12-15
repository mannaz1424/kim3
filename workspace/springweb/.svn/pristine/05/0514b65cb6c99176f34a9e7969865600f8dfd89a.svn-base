package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.BookStore;

public class A07_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp07.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		BookStore bs = (BookStore)bean.getBean("bkstore");
		bs.buyBook();
		
	}

}
