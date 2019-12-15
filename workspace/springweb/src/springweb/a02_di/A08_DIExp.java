package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.Book;

public class A08_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp08.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		Book bk = (Book)bean.getBean("book");
		// 모든 클래스는 default로  id값은 클래스명으로 소문자로
		// 시작하는 것으로 default 처리된다.
		bk.setName("미라클 모닝");
		bk.setPrice(22000);
		bk.setCnt(5);
		bk.buy();
		
		
	}

}
