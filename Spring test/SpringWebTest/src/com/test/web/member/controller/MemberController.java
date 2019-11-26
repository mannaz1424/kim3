package com.test.web.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.web.member.bean.MemberBean;
import com.test.web.member.dao.MemberDao;

@Controller
public class MemberController {

	@Autowired
	private MemberDao memberDao;
	
	
	/** 로그인 화면 */
	@RequestMapping("/member/loginForm.do")
	public String loginForm() throws Exception {
		return "member/loginForm";
	}
	
	/** 로그인 처리 - Ajax */
	@RequestMapping("/member/loginProc.do")
	@ResponseBody //이유? JSON 데이터로 최종 return 하기 위해서
	public Map<String, Object> loginProc(HttpSession session, MemberBean memberBean) throws Exception {
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		System.out.println(memberBean.getMbId());
		System.out.println(memberBean.getMbPw());
		
		MemberBean selMBean = memberDao.selectMember(memberBean);
		
		if(selMBean == null) {
			rtnMap.put("result", "fail");
			rtnMap.put("resultMsg", "해당 아이디와 비밀번호가 일치되는 회원이 없습니다.");
		}
		else {
			rtnMap.put("result", "ok");
			rtnMap.put("resultMsg", "로그인에 성공 하였습니다.");
			//세션에 조회된 값을 저장해둔다.
			session.setAttribute("memberBean", selMBean);
		}
		
		return rtnMap;
	}
	
	
	/** 회원 가입 화면 */
	@RequestMapping("/member/insertMemberForm.do")
	public String insertMemberForm() throws Exception {
		return "member/insertMemberForm";
	}
	
	/** 회원 가입 처리 */
	@RequestMapping("/member/insertMember.do")
	public String insertMember(MemberBean memberBean) throws Exception {
		
		int resVal = memberDao.insertMember(memberBean);
		if(resVal > 0) {
			//회원가입 성공
			return "redirect:/member/memberList.do";
		}
		
		//회원가입 실패시 다시 입력화면으로 이동
		return "member/insertMemberForm";
	}
	
	
	/** 회원 리스트 출력 */
	@RequestMapping("/member/memberList.do")
	public String memberList(Model model) throws Exception {
		
		List<MemberBean> memberList = memberDao.selectMemberList();
		model.addAttribute("memberList", memberList);
		
		return "member/memberList";
	}

	
}
