package springweb.z01_vo.scan;

import org.springframework.stereotype.Component;

@Component("man01")
public class Man {
	private String name;
	private Woman woman;
	public Man() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Man(String name) {
		super();
		this.name = name;
	}
	public void show() {
		System.out.println("이름은 "+name);
		if(woman!=null) woman.info();
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Woman getWoman() {
		return woman;
	}
	public void setWoman(Woman woman) {
		this.woman = woman;
	}
	
}
