package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.Dept;
import springweb.z01_vo.Product;

public class A05_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp05.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		Product prod01 = (Product)bean.getBean("prod01");
		prod01.buy();
		Product prod02 = (Product)bean.getBean("prod02");
		prod02.buy();	
		
		Dept dept01 = (Dept)bean.getBean("dept01");
		System.out.println("## 부서정보1 ##");
		System.out.println("부서번호:"+dept01.getDeptno());		
		System.out.println("부서이름:"+dept01.getDname());
		System.out.println("부서위치:"+dept01.getLoc());
		Dept dept02 = (Dept)bean.getBean("dept02");
		System.out.println("## 부서정보2 ##");		
		System.out.println("부서번호:"+dept02.getDeptno());
		System.out.println("부서이름:"+dept02.getDname());
		System.out.println("부서위치:"+dept02.getLoc());		
		
	}

}
