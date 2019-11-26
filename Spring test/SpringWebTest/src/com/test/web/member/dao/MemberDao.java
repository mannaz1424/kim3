package com.test.web.member.dao;

import java.util.List;

import com.test.web.member.bean.MemberBean;

public interface MemberDao {

	//회원가입 
	public int insertMember(MemberBean memberBean);
	
	//전체 회원 목록 조회
	public List<MemberBean> selectMemberList();
	
	//특정회원 조회
	public MemberBean selectMember(MemberBean memberBean);
	
}
