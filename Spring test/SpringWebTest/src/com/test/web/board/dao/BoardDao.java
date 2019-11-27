package com.test.web.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.web.board.bean.ContentBean;

public interface BoardDao {

	public List<ContentBean> selectBoardList();
	
	// HeidiSQL 에 변수를 보낼때는 @Param 을 Dao.java 파일에 사용해야 한다.
	public List<ContentBean> selectBoardList2(@Param("nEnd")int nEnd, @Param("nStart")int nStart);
//	public List<ContentBean> selectBoardList2(PageBean pageBean);
	
	
	
	
	// 페이지 관련 Dao
	public Integer totalCountDao();
	
//	public void writeDao(String user, String title, String date);
	public void writeDao(ContentBean contentBean);
	
	
	
	
	public List<ContentBean> contentDao(int no);
//	public List<ContentBean> contentDao(ContentBean contentBean);
	
//	public void updateDao(int no, String user, String title, String date);
	public void updateDao(ContentBean contentBean);
	
	public void deleteDao(int no);
	
	public void upNoDao();
	
	public void downNoDao(int no);
}
