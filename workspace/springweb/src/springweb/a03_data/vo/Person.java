package springweb.a03_data.vo;

public class Person {
// name=himan&age=25&loc=서울신림
// 요청값은 setName 메서드와
//     숫자형일 경우는 setAge(int num)
// name=himan&age= &loc=서울신림
// 요청값은 setName 메서드와
//	     숫자형일 경우는 setAge(int num)	
// setName(), setAge() setLoc()
	private String name;
	private int age;
	private String loc;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	// age=
	public void setAge(int age) {
		this.age = age;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	
}
