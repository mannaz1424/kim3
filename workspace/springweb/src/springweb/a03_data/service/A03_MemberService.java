package springweb.a03_data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a03_data.dao.A03_MemberDao;
import springweb.z01_vo.Member;

@Service
public class A03_MemberService {
	@Autowired(required=false)
	private A03_MemberDao dao;
	public Member login(Member sch) {
		return dao.login(sch);
	}
}
