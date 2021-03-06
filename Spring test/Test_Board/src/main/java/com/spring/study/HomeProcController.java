package com.spring.study;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.study.dao.IDao;
import com.spring.study.dto.ContentDto;


@Controller
public class HomeProcController {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 에러 발생	
	// IDao dao = sqlSession.getMapper(IDao.class);
	
	private HttpSession session;
	
	@RequestMapping(value = "/selectContentList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> selectContentList() throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			 map.put("contentList", dao.listDao());
		}catch(Exception e) {
			e.printStackTrace();
		}
		 return map;
	}
	
	
	@RequestMapping(value = "/insertContentAjax", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> insertContentAjax(ContentDto contentDto) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			IDao dao = sqlSession.getMapper(IDao.class);
			 map.put("contentList", dao.listDao());
		}catch(Exception e) {
			e.printStackTrace();
		}
		 return map;
	}
	
	
}
