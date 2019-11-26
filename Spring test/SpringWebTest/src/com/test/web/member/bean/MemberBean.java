package com.test.web.member.bean;

public class MemberBean {

	/** 회원 아이디 */
	private String mbId;
	/** 회원명 */
	private String mbName;
	/** 회원 패스워드 */
	private String mbPw;
	/** 회원 주소 */
	private String mbAddr;
	
	
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public String getMbName() {
		return mbName;
	}
	public void setMbName(String mbName) {
		this.mbName = mbName;
	}
	public String getMbPw() {
		return mbPw;
	}
	public void setMbPw(String mbPw) {
		this.mbPw = mbPw;
	}
	public String getMbAddr() {
		return mbAddr;
	}
	public void setMbAddr(String mbAddr) {
		this.mbAddr = mbAddr;
	}

}
