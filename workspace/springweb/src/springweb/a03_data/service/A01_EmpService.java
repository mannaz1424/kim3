package springweb.a03_data.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_data.dao.A01_EmpDao;
import springweb.z01_vo.Emp;

@Service
public class A01_EmpService {
	
	@Autowired(required=false)
	private A01_EmpDao dao;
	
	public ArrayList<Emp> empList(Emp sch){
		return dao.empList(sch); 
	}
	public void insertEmp(Emp insert) {
		dao.insertEmp(insert);
	}
	public Emp getEmp(int empno) {
		return dao.getEmp(empno);
	}
	public void uptEmp(Emp upt) {
		dao.uptEmp(upt);
	}
	public void delEmp(int empno) {
		dao.delEmp(empno);
	}	
}
