package springweb.a03_data.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import springweb.z01_vo.Emp;

// springweb.a03_data.dao.A01_EmpDao
@Repository
public interface A01_EmpDao {
	// 1. 조회메서드
	public ArrayList<Emp> empList(Emp sch);
	// 2. 입력메서드
	public void insertEmp(Emp insert);
	// 3. 상세 데이터 메서드..
	public Emp getEmp(int empno);
	// 4. 수정메서드
	public void uptEmp(Emp upt);
	// 5. 삭제메서드.
	public void delEmp(int empno);
	
	
	
}
