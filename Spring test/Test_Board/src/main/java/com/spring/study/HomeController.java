package com.spring.study;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.study.dao.IDao;
import com.spring.study.dto.ContentDto;
import com.spring.study.dto.PageDto;


@Controller
public class HomeController {
	
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	private SqlSession sqlSession;
	// 에러 발생	
	// IDao dao = sqlSession.getMapper(IDao.class);
	
	private HttpSession session;
	static int NO = 0;
	
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
	

//	// POST 일 경우에 에러 발생
//	// @RequestMapping(value = "/", method = RequestMethod.POST)
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formattedDate = dateFormat.format(date);
//		model.addAttribute("serverTime", formattedDate );
//		
//		// return "home";
//		return "redirect: view_List";
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "view_List";
	}

	 
	 
    @RequestMapping(value = "selectPage", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectPage (@RequestBody PageDto pageDto) 
			                                 throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
			
		IDao dao = sqlSession.getMapper(IDao.class); 

		// total count 가져오기
		I_TOTAL_COUNT = dao.totalCountDao();
			
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
//		String sCur_Page = request.getParameter("curPage");	
		I_CUR_PAGE = pageDto.getCurPage();
			
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
		
		
		// 
		String result = "ok";
		String resultMsg = pageDto.getCurPage() + "페이지 입니다.";
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		PageDto pDto = new PageDto();
		
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
		
		map.put("mListCount", LIST_COUNT);
		map.put("mPageCount", PAGE_COUNT);
		map.put("mTotalCount", I_TOTAL_COUNT);
		map.put("mTotalPage", TOTAL_PAGE);
		map.put("mCurPage", I_CUR_PAGE);		
		map.put("mStart", N_START);
		map.put("mEnd", N_END);
		map.put("mStartPage", N_START_PAGE);
		map.put("mEndPage", N_END_PAGE);
		
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
		System.out.println("pageDto.getCurPage() : " + pageDto.getCurPage());
		
		return map;
	}
    
    
	
	@RequestMapping(value="tBoardList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> boardList() throws Exception{
	    Map<String, Object> map = new HashMap<String, Object>();
	    
	    try {
	    	IDao dao = sqlSession.getMapper(IDao.class);
	    	
//	    	map.put("mList", dao.listDao());
	    	map.put("mList", dao.listDao2(N_END, N_START));	    	
	    }catch (Exception e) {
	    	e.printStackTrace();
	    	System.out.println("e : " + e);
		}	    
	    //N_END = 0;
    	//N_START = 0;
	    
	    return map;
	}
	
	
	@RequestMapping("view_Page")
	public String view_Page(HttpServletRequest request) {
		// CUR_PAGE 받아오기
		String sCur_Page = request.getParameter("curPage");
		SCUR_PAGE = sCur_Page;
		
		return "redirect: view_List";
	}
	
	
	
	@RequestMapping(value = "deleteContent", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteContent (@RequestBody ContentDto contentDto) 
			                                 throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "삭제되었습니다.";
		
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.deleteDao(contentDto.getTnum());
			dao.downNoDao(contentDto.getTnum());
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;
			result = "fail";
		}
		
		System.out.println("contentDto.getTnum() : " + contentDto.getTnum());
		System.out.println("contentDto.getUserid() : " + contentDto.getUserid());
		System.out.println("NO : " + NO);
		NO = 0;
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		return map;
	}
	
		
//	@RequestMapping("view_Content")
//	public String view_Content(HttpServletRequest request) {
//		String sNo = request.getParameter("num");
//		int nNo = Integer.parseInt(sNo);
//		NO = nNo;
//		
//		try {
//			IDao dao = sqlSession.getMapper(IDao.class);
//			dao.hitDao(NO);			
//		}catch(Exception e) {
//			e.printStackTrace();
//			System.out.println("e : " + e);			
//		}
//		
//		return "redirect: view_List";
//	}
//	
//	
//	@RequestMapping(value = "tContent", method = RequestMethod.GET)
//	@ResponseBody
//	// bean 을 하나만 받아올 때에는 @RequestBody 를 안써도 된다.
//	public Map<String, Object> view_Content(ContentDto contentDto) throws Exception{
//		Map<String, Object> map = new HashMap<String, Object>();
//		String result = "ok";
//		String resultMsg = "조회되었습니다.";
//		
//		try {
//			IDao dao = sqlSession.getMapper(IDao.class);
//			map.put("mContent", dao.contentDao(NO));
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//			resultMsg = "e : " + e;	
//			result = "fail";
//		}
//	
//		System.out.println("NO : " + NO);
//		NO = 0;
//		map.put("result", result);
//		map.put("resultMsg", resultMsg);
//		return map;
//	}
	
	
	
	
	// tApp 의 insertPostAjax 메소드로 부터 이동
	@RequestMapping(value = "insertContent", method = RequestMethod.POST)
	@ResponseBody	
	// @RequestBody 는 하나이상의 bean 을 받아올때에는 반드시 써주어야 한다.
	public Map<String, Object> insertContent(@RequestBody ContentDto contentDto) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "저장되었습니다.";
		
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.upNoDao();
			dao.writeDao(contentDto.getUserid(), contentDto.getTtitle(), 
					     contentDto.getTcontent(), contentDto.getTdate());
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		System.out.println("result : " + result);
		System.out.println("resultMsg : " + resultMsg);
		System.out.println("contentDto.getTdate() : " + contentDto.getTdate());
		
		return map;
	}
	
	
	
	
	@RequestMapping(value = "selectContent", method = RequestMethod.POST)
	@ResponseBody
	// bean 을 하나만 받아올 때에는 @RequestBody 를 안써도 된다.
	public Map<String, Object> selectContent(@RequestBody ContentDto contentDto) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "조회되었습니다.";
		
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.hitDao(contentDto.getTnum());
			map.put("mContent", dao.contentDao(contentDto.getTnum()));
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		System.out.println("contentDto.getTnum() : " + contentDto.getTnum());
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		return map;
	}
	
	@RequestMapping(value = "selectModify", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectModify(@RequestBody ContentDto contentDto)
	                                        throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "Data를 수정하세요...";
		
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			map.put("mModify", dao.contentDao(contentDto.getTnum()));			
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;
			result = "fail";
		}
		System.out.println("contentDto.getTnum() : " + contentDto.getTnum());
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		
		return map;
	}
	
	@RequestMapping(value = "updateContent", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> updateContent(@RequestBody ContentDto contentDto) 
			                                throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ok";
		String resultMsg = "수정되었습니다.";
		
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			dao.updateDao(contentDto.getTnum(), contentDto.getUserid(), 
					      contentDto.getTtitle(), contentDto.getTcontent(), 
					      contentDto.getTdate());
		}catch(Exception e) {
			e.printStackTrace();
			resultMsg = "e : " + e;	
			result = "fail";
		}
		
		map.put("result", result);
		map.put("resultMsg", resultMsg);
		
		System.out.println("result : " + result);
		System.out.println("resultMsg : " + resultMsg);
		System.out.println("update contentDto.getTnum() : " + contentDto.getTnum());
		System.out.println("update contentDto.getUserid() : " + contentDto.getUserid());
		
		return map;
	}
}
