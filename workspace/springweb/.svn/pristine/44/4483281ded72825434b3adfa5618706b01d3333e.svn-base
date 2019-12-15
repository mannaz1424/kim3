package springweb.a03_data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a03_data.service.A01_EmpService;
import springweb.z01_vo.Emp;

@Controller
@RequestMapping("/emp.do")
public class A01_EmpCtrl {
	@Autowired(required=false)
	private A01_EmpService service;
	@RequestMapping(params="method=list")
	public String emp(Emp sch, Model d) {
		d.addAttribute("empList", service.empList(sch));
		return "WEB-INF\\view\\a03_data\\a01_emplist.jsp";
	}
	@RequestMapping(params="method=Ajaxlist")
	public String Ajaxlist(Emp sch, Model d) {
		d.addAttribute("empList", service.empList(sch));
		return "pageJsonReport";
	}	
	@RequestMapping(params="method=insertForm")
	public String form() {
		return "WEB-INF\\view\\a03_data\\a01_empInsert.jsp";
	}
	@RequestMapping(params="method=insert")
	public String insert(Emp insert) {
		System.out.println("사원명:"+insert.getEname());
		System.out.println("입력완료..");
		
		
		service.insertEmp(insert);
		return "redirect:/emp.do?method=list";
	}
	// 상세화면 처리..method=detail&empno="+empno
/*	
	1. 상세화면 요청 url로 통해 controller 단 호출.empno를 입력받는다.
	2. select * from emp10 where empno = @@ 을 처리할 수 있는 dao단 메서드 구성.
		public Emp getEmp(int empno);
	3. mapper.xml에서 sql 선언과 데이터 처리..
	4. dao --> service --> controller 단  연결처리..
	5. controller에서 화면 model 데이터 설정 view단 구성 처리..
*
*/	
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("empno") int empno, Model d) {
		System.out.println("상세검색 empno:"+empno);
		// 상세화면 넘겨줄 모델 데이터 처리..
		d.addAttribute("emp", service.getEmp(empno));
		
		return "WEB-INF\\view\\a03_data\\a01_empDetail.jsp";
	}
	
	
	
	/*
# 수정 삭제 처리 
1. 화면에서 UI를 확인 및 변경..(jsp)
	1) 수정/삭제 버튼 클릭시, 처리 controller url pattern 호출
2. 서버단 처리..(java)	
	2) controller 선언 : url pattern에 매칭되게
	    요청값 확인..
	    - 수정은  emp 객체로 요청값 처리
	    - 삭제는  empno 요청값 처리..
	3) dao를 통한 데이터 처리..
		public void uptEmp(Emp upt);
		public void delEmp(int empno);
	4) mapper.xml 선언..
		sql구분과 dao에서 선언된 내용에 맞는 <update>
		<delete> sql 처리.
	5) dao --> serivce --> controller 연결 처리..
	6) controller에서 후속 작업 
		수정 --> 단일 데이터로 다시 확인 페이지 이동.
		삭제 --> 전체 리스트 화면으로 이동 

	*/	
	@RequestMapping(params="method=update")
	public String update(Emp upt) {
		System.out.println("수정할 이름:"+upt.getEname());
		System.out.println("수정할 날짜:"+upt.getHiredate().toLocaleString());
		System.out.println("수정할 날짜:"+upt.getHiredate().toLocaleString().substring(0,upt.getHiredate().toLocaleString().length()-11));

		service.uptEmp(upt);
		// redirect : 요청값을 해당 controller에 전달하지 않음.
		// forward : 요청값을 해당 controller에 전달한다.
		return "forward:/emp.do?method=detail";
	};
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("empno") int empno) {
		System.out.println("삭제할 empno:"+empno);
		service.delEmp(empno);
		return "redirect:/emp.do?method=list";
	};	
	
	
	
}
/*
String date= (upt.getHiredate().getYear()+1900)+"/"+(upt.getHiredate().getMonth()+1)
		+"/"+upt.getHiredate().getDate();
System.out.println("수정할 날짜:"+upt.getHiredate().toLocaleString().substring(0,12).trim());
		
# 스프링에서 데이터베이스 처리..
1. 환경설정
	0) lib 설정.
		commons-dbcp-1.2.2.jar
		mybatis-3.0.6.jar
		spring-jdbc-4.0.4.RELEASE.jar
		ojdbc6.jar
	1) Database 연동 모듈 설정..(dispatcher-servlet.xml)
		- DBCP 설정 내용(연결처리)
		  	- BasicDataSource 객체를 통한 연결정보 처리. dataSource 설정
			- Driver와 DB 서버 연결처리.
		- Mybatis 설정 xml 
		    - 연결된 객체(dataSource)을 기반으로 설정.
		      SqlSessionFactoryBean 객체
		      setConfigLocation()를 통해서 mybatis 공통 설정파일 (xml)
		      
2. 각 모듈별로 Database 처리.
	1) dao(Database Access Object) interface 생성..
	   Repository에 대한 설정..
	   
	2) interface 패턴은  입력값, return 값을 메서드로 설정하면,
	  이 입력값, 메서드명, return 객체에 형식 맞게 xml에 설정하고,
	  이를 통해서, 데이터처리할 객체가 mybatis framework에 의해 자동 생성이 된다.
	  처리된다.
	  - dao명, 메서드명, 입력값 type, return 객체 type.
    3) dao interface에 의해서 연동된 mapper.xml 설정으로  객체가 자동 생성되게
       할려면 마지막으로 dispatcher-servervlet에서  dao 패키지를 등록하여야 한다.
       MapperScannerConfigurer에서 
       name="basePackage" value="springweb.a03_data.dao,springweb.a03_data.deptDao"와 같이
       DAO(X), dao가 있는 package명을 등록한다.
       2개 이상을 때는데,  value에 (,)로 추가 등록한다.
       
ex) select * from dept를 처리할려고 한다.
	 springweb\a03_data\dao패키지에  A02_DeptDao.java로
	 설정하여 위에서 언급한 xml에서 처리하는 부분을 기준으로 생성 및 코딩 하세요

*/
// ex) 사원 정보 등록 처리 화면 구현..
//    





