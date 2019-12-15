package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.Person;

public class A00_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
# DI 연습을 위한 환경 구성.
1. xml에서 선언한 객체를 메모리에 올리는 순서
	1) 가상의 컨테이터 xml 파일에 객체를 선언한다.
	2) xml에 있는 객체를 main()에서 호출하여 사용할 수 있도록
	   Resource 객체를 활용한다.
	3) BeanFactory를 선언하고, getBean("xml에선언된 bean이름")
	  메서드를 통해서, 객체를 main에서 호출한다.
	4) 호출된 객체를 사용한다.
		*/
		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp00.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
	
		
		
	}

}
