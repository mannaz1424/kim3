package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.scan.Dept;
import springweb.z01_vo.scan.Emp;

public class A09_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp09.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		Dept dept = (Dept)bean.getBean("dept01");
		dept.setDname("인사");
		System.out.println(dept.getDname());
		/*
		Emp는 annotation으로 설정되 있지 않기 때문에 에러발생..
		Emp emp = (Emp)bean.getBean("emp");
		emp.setEmpno(7777);
		*/
		
		
		
		
	}

}
