package springweb.z01_vo;

import java.util.ArrayList;

public class Bus {
	private int no;
	private ArrayList<Person> list;
	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bus(int no) {
		super();
		this.no = no;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public ArrayList<Person> getList() {
		return list;
	}
	public void setList(ArrayList<Person> list) {
		this.list = list;
	}
	public void showPList() {
		System.out.println(no+"번 버스에 탑승자 명단");
		if(list!=null && list.size()>0) {
			for(Person p:list) {
				p.show();
			}
		}
	}
	
	
	
}
