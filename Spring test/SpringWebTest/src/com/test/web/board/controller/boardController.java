package com.test.web.board.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.web.board.bean.ContentBean;
import com.test.web.board.bean.PageBean;
import com.test.web.board.dao.BoardDao;


@Controller
public class boardController {
	
	@Autowired
	private BoardDao boardDao;
	
	
	static String SCUR_PAGE = null;
	static Integer LIST_COUNT = 5;
	static Integer PAGE_COUNT = 10;
	static Integer I_CUR_PAGE = 1;
	static Integer I_TOTAL_COUNT = null;
	static int TOTAL_PAGE = 0;
	static int N_START = 0;	
	static int N_END = 0;
	static int N_START_PAGE = 0;
	static int N_END_PAGE = 0;
	
	
	// view_List 
	@RequestMapping("/")
	public String view_List() {		
		
		return "board/view_List";
	}
	
	@RequestMapping(value="tBoardList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> tBoardList() throws Exception{
	    Map<String, Object> map = new HashMap<String, Object>();
	    
	    try {
	    	
	    	PageBean pageBean = new PageBean();
	    	pageBean.setnEnd(N_END);
	    	pageBean.setnStart(N_START);
	    	
	    	map.put("mList", boardDao.selectBoardList2(N_END, N_START));
//	    	map.put("mList", boardDao.selectBoardList2(pageBean));
	    }catch (Exception e) {
	    	e.printStackTrace();
	    	System.out.println("e : " + e);
		}	
	    
	    System.out.println("N_START : " + N_START);
	    System.out.println("N_END : " + N_END);
	    return map;
	}
	

	@RequestMapping(value = "selectPage", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectPage (@RequestBody PageBean pageBean) 
			                                 throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();

		// total count 가져오기
		I_TOTAL_COUNT = boardDao.totalCountDao();
		
		if(I_TOTAL_COUNT == null || I_TOTAL_COUNT == 0) {
			TOTAL_PAGE = 0;
		}else {
		    if(I_TOTAL_COUNT % LIST_COUNT > 0) {
		    	TOTAL_PAGE = I_TOTAL_COUNT / LIST_COUNT;
		    	TOTAL_PAGE++;
		    }else {
		    	TOTAL_PAGE = I_TOTAL_COUNT / LIST_COUNT;
		    }
		}
		
		// CUR_PAGE 받아오기
		I_CUR_PAGE = pageBean.getCurPage();
		
		if(I_CUR_PAGE == null || I_CUR_PAGE == 0) {			
			I_CUR_PAGE = 1;
		}else {
			if(I_CUR_PAGE > TOTAL_PAGE) {
				I_CUR_PAGE = TOTAL_PAGE;
			}else if(I_CUR_PAGE < 1) {
				I_CUR_PAGE = 1;
			}
		}
		
		// page 표시에 표시될 content 수량 listGoodsDao2 에 사용
		N_START = (I_CUR_PAGE - 1) * LIST_COUNT + 1;
		N_END = (I_CUR_PAGE - 1) * LIST_COUNT + LIST_COUNT;
		
		
		// 하단에 표시될 page 수량
		// 시작 페이지
		N_START_PAGE = ((I_CUR_PAGE - 1) / PAGE_COUNT) * PAGE_COUNT + 1;
		// 끝 페이지
		N_END_PAGE = N_START_PAGE + PAGE_COUNT - 1;	
		if(N_END_PAGE > TOTAL_PAGE) {
			N_END_PAGE = TOTAL_PAGE;
		}
	
		String result = "ok";
		String resultMsg = pageBean.getCurPage() + "페이지 입니다.";
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);		
		
		PageBean pDto = new PageBean();
		
		pDto.setCurPage(I_CUR_PAGE);		
		pDto.setListCount(LIST_COUNT);
		pDto.setPageCount(PAGE_COUNT);			
		pDto.setiTotalCount(I_TOTAL_COUNT);
		pDto.setTotalPage(TOTAL_PAGE); // TOTAL_PAGE (int)
		pDto.setiCurPage(I_CUR_PAGE);
		pDto.setnStart(N_START); // N_START (int)
		pDto.setnEnd(N_END); // N_END (int)
		pDto.setnStartPage(N_START_PAGE); // N_START_PAGE (int)
		pDto.setnEndPage(N_END_PAGE); // N_END_PAGE (int)
		
		map.put("pDto", pDto);
		
		System.out.println("LIST_COUNT  : " + LIST_COUNT );
		System.out.println("PAGE_COUNT : " + PAGE_COUNT);
		System.out.println("I_TOTAL_COUNT : " + I_TOTAL_COUNT);
		System.out.println("TOTAL_PAGE : " + TOTAL_PAGE);
		System.out.println("I_CUR_PAGE : " + I_CUR_PAGE);
		System.out.println("N_START  : " + N_START );
		System.out.println("N_END : " + N_END);
		System.out.println("N_START_PAGE   : " + N_START_PAGE  );
		System.out.println("N_END_PAGE : " + N_END_PAGE);
		         
		System.out.println("map.get(\"mStartPage\") : " + map.get("mStartPage"));
		System.out.println("pageDto.getCurPage() : " + pageBean.getCurPage());
		
		return map;
	}
		

	@RequestMapping(value = "deleteContent", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteContent (@RequestBody ContentBean contentBean) 
			                                 throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "삭제되었습니다.";
		
		try {
			boardDao.deleteDao(contentBean.getNo());
			boardDao.downNoDao(contentBean.getNo());
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;
			result = "fail";
		}
		
		System.out.println("contentBean.getNo() : " + contentBean.getNo());
		System.out.println("contentBean.getUser() : " + contentBean.getUser());
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		return map;
	}
	
	// tApp 의 insertPostAjax 메소드로 부터 이동
	@RequestMapping(value = "insertContent", method = RequestMethod.POST)
	@ResponseBody	
	// @RequestBody 는 하나이상의 bean 을 받아올때에는 반드시 써주어야 한다.
	public Map<String, Object> insertContent(@RequestBody ContentBean contentBean) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "저장되었습니다.";
		
		try {			
			boardDao.upNoDao();
			boardDao.writeDao(contentBean);
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		System.out.println("result : " + result);
		System.out.println("resultMsg : " + resultMsg);
		System.out.println("contentBean.getUser() : " + contentBean.getUser());
		System.out.println("contentBean.getTitle() : " + contentBean.getTitle());
		System.out.println("contentBean.getTdate() : " + contentBean.getDate());
		
		return map;
	}
 

	@RequestMapping(value = "selectContent", method = RequestMethod.POST)
	@ResponseBody
	// bean 을 하나만 받아올 때에는 @RequestBody 를 안써도 된다.
	public Map<String, Object> selectContent(@RequestBody ContentBean contentBean) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "조회되었습니다.";
		
		try {
			map.put("mContent", boardDao.contentDao(contentBean.getNo()));
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		System.out.println("contentDto.getNo() : " + contentBean.getNo());
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		System.out.println();
		
		return map;
	}
	
	
	@RequestMapping(value = "selectModify", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectModify(@RequestBody ContentBean contentBean)
	                                        throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "Data를 수정하세요...";
		
		try {
			map.put("mModify", boardDao.contentDao(contentBean.getNo()));
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;
			result = "fail";
		}
		System.out.println("contentDto.getTnum() : " + contentBean.getNo());
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		
		return map;
	}
	
	@RequestMapping(value = "updateContent", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateContent(@RequestBody ContentBean contentBean) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "수정되었습니다.";
		
		try {
//			IDao dao = sqlSession.getMapper(IDao.class);
//			boardDao.updateDao(contentBean.getNo(), contentBean.getUser(), 
//					      contentBean.getTitle(), contentBean.getDate());
			boardDao.updateDao(contentBean);
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		System.out.println("result : " + result);
		System.out.println("resultMsg : " + resultMsg);
		System.out.println("update contentDto.getTnum() : " + contentBean.getNo());
		System.out.println("update contentDto.getUserid() : " + contentBean.getUser());
		
		return map;
	}
	

}
