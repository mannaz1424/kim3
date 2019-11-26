package com.spring.study;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.study.dao.IDao;
import com.spring.study.dto.ContentDto;

@Controller
public class HomeController2 {
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController2.class);
	
	
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
	
	

	
}
