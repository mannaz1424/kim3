package springweb.z01_vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
// springweb.z01_vo.Emp
public class Emp {
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date hiredate;
	private double sal;
	private double comm;
	private int deptno;
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Emp(int empno, String ename, String job, int mgr, double sal, int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.job = job;
		this.mgr = mgr;
		this.sal = sal;
		this.deptno = deptno;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getMgr() {
		return mgr;
	}
	// name="mgr" value="0" 숫자형은 적어도 숫자형으로 입력되어야지,
	// controller에서 호출이 된다.
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public double getComm() {
		return comm;
	}
	public void setComm(double comm) {
		this.comm = comm;
	}
	
}
