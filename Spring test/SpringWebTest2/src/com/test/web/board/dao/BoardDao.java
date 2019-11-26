package com.test.web.board.dao;

import java.util.List;

import com.test.web.board.bean.ContentBean;
import com.test.web.board.bean.PageBean;

public interface BoardDao {

	public List<ContentBean> selectBoardList();
	
//	public List<ContentBean> selectBoardList2(int nEnd, int nStart);
	public List<ContentBean> selectBoardList2(PageBean pageBean);
	
	
	
	
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
