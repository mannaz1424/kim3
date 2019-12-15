package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.Member;
import springweb.z01_vo.Person;

public class A01_DIExp {

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
				"springweb\\a02_di\\diexp01.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		// <bean id="p01" class="springweb.z01_vo.Person" >
		//    xml에서 생성된 객체는 모두다 Object이기에 typecasting이
		//    필요로 한다.
		Person p01 = (Person)bean.getBean("p01");
		p01.show();
		Person p02 = (Person)bean.getBean("p02");
		p02.show();
// ex) VO 패키지에 Product 물건명, 가격, 갯수 속성 설정 클래스 선언.
//     diexp02.xml  메서드를 통해서 속성값 할당, 생성자를 통해서
//      속성할당 객체 선언..
//       A02_DIExp.java 를 통해서 출력 처리.
		
		Member m01 = (Member)bean.getBean("m01");
		System.out.println("이름:"+m01.getName());
		Member m02 = (Member)bean.getBean("m02");
		System.out.println("아이디:"+m02.getId());		
		
	}

}
