package springweb.z01_vo;



public class Man {
	private String name;
	// 클래스에서 외부 클래스를 1:1 관계로 포함 처리된 구조로 만듦
	
	private Woman woman; // woman = new Woman();
	public Man() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Man(String name, Woman woman) {
		super();
		this.name = name;
		this.woman = woman;
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
	// byName은  Woman객체가 xml에서 선언될 때, 
	// id값이  woman일 때, 자동으로 할당 되는 것을 말한다.
	//  <bean id="woman" class="###.Woman" ...
	//  <bean class="###.Man" autowire="byName">
	public void setWoman(Woman woman) {
		this.woman = woman;
	}
	// ex) <bean id="w01" class="##.Woman"/>
	//   Man에 autowire byName으로 w01객체가 할당될려면 메서드를 어떻게
	// 선언하여야 하는가? <bean class="###.Man" autowire="byName">
	public void setW01(Woman woman) {
		this.woman = woman;
	}

	
	
	
}
