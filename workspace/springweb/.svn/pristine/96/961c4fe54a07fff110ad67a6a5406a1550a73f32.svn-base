package springweb.z01_vo.scan;

import org.springframework.stereotype.Controller;

/*
# <context:component-scan base-package="">를 이용해서,
객체를 호출하면, default로 클래스명의 소문자 시작 변수로 참조변수가 만들어진다.
1. 이때, 같은 클래스인 경우에 참조변수의 식별자가 동일하게 로딩되기에 에러가발생한다.
   package springweb.z01_vo.scan의  하위에 있는 Dept나
   package springweb.z01_vo 하위에 있는 Dept가 동일 아이디값으로 매핑되기에
   에러가 발생한다. 이때, 한쪽에 있는 클래스에 아래와 같이 이름을 변경하여야 정상적인
   처리를 할 수 있다. Controller("dept01")
   <input id="dept01" class=""/>
*/
@Controller("dept01")
public class Dept {
	private int deptno;
	private String dname;
	private String loc;
	public Dept() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Dept(int deptno, String dname, String loc) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
