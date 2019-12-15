package springweb.a03_data.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_data.dao.A02_DeptDao;
import springweb.z01_vo.Dept;

@Service
public class A02_DeptService {
	@Autowired(required=false)
	private A02_DeptDao dao;
	
	public ArrayList<Dept> deptList(Dept dsch){
		return dao.deptList(dsch);
	}
	public void insertDept(Dept ins) {
		dao.insertDept(ins);
	}
}
