package springweb.a02_di;


import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import springweb.z01_vo.scan2.Woman;
import springweb.z01_vo.scan2.Man;

public class A08_1_DIExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AbstractApplicationContext ctx = new GenericXmlApplicationContext("springweb\\a02_di\\diexp08_1.xml");
		
		Woman w01 = ctx.getBean("w02", Woman.class);
		w01.setName("이정아");
		w01.setAge(25);
		Man man01 = ctx.getBean("man02",Man.class);
		man01.setName("이정호");
		man01.show();
		/*
ex) springweb.z01_vo.scan2안에 있는 Woman, Man 클래스에서
	Man이 Woman을 소스로 autowire되게 하여 출력하세요..
	1. springweb.z01_vo.scan2.Man
		
	2. springweb.z01_vo.scan2.Woman
	
		Man을 호출하여 정상적으로 출력되게 처리하세요..		
				
		*/		
		
		
	}

}
