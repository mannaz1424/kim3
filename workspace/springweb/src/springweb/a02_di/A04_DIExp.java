package springweb.a02_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_vo.BookStore;
import springweb.z01_vo.Bus;
import springweb.z01_vo.Mart;

public class A04_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
ex) Mart에 구매한 물건(Product) 1:1 관계 설정!!
   @@@ 마트에서 
   @@@을  @@개  @@가격으로 구매하여
     총 비용이 @@@원입니다.


		*/
		// 1. xml 파일을 Resource 객체로 할당.
		Resource rs = new ClassPathResource(
				"springweb\\a02_di\\diexp04.xml");
		// 2. BeanFactory를 통해 할당.
		BeanFactory bean = new XmlBeanFactory(rs);
		// 3. 해당 객체 가져오기..
		Mart m01 = (Mart)bean.getBean("m01");
		m01.goMart();
		
		Mart m02 = (Mart)bean.getBean("m02");
		m02.goMartMuti();
		/*
ex) BookStore (1) 
	Book(다)
	서점에서 구매한 도서 리스트를  출력 처리..
	@@ 서점에서 구매한 도서 목록
	@@@ @@@ @@@ 			
	@@@ @@@ @@@ 			
	@@@ @@@ @@@
	총 비용 @@@ 원 			
		*/	
		BookStore bs = (BookStore)bean.getBean("bs");
		bs.buyList();
		Bus bus01 = (Bus)bean.getBean("bus01");
		bus01.showPList();
	}

}
