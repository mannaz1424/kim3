package com.spring.study.dto;

public class PageDto {
	
	private Integer curPage;
	
	private Integer listCount;
	private Integer pageCount;
	private Integer iTotalCount;
	private Integer totalPage;
	private Integer iCurPage;
	private Integer nStart;
	private Integer nEnd;
	private Integer nStartPage;
	private Integer nEndPage;
	
	
	public PageDto() {
		
	}
	
    public PageDto(Integer curPage, Integer listCount, 
    		       Integer pageCount, Integer iTotalCount,
    		       Integer totalPage, Integer iCurPage,
    		       Integer nStart, Integer nEnd,
    		       Integer nStartPage, Integer nEndPage) {
		this.curPage = curPage;
	}
    

	public Integer getCurPage() {
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}

	public Integer getListCount() {
		return listCount;
	}

	public void setListCount(Integer listCount) {
		this.listCount = listCount;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getiTotalCount() {
		return iTotalCount;
	}

	public void setiTotalCount(Integer iTotalCount) {
		this.iTotalCount = iTotalCount;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getiCurPage() {
		return iCurPage;
	}

	public void setiCurPage(Integer iCurPage) {
		this.iCurPage = iCurPage;
	}

	public Integer getnStart() {
		return nStart;
	}

	public void setnStart(Integer nStart) {
		this.nStart = nStart;
	}

	public Integer getnEnd() {
		return nEnd;
	}

	public void setnEnd(Integer nEnd) {
		this.nEnd = nEnd;
	}

	public Integer getnStartPage() {
		return nStartPage;
	}

	public void setnStartPage(Integer nStartPage) {
		this.nStartPage = nStartPage;
	}

	public Integer getnEndPage() {
		return nEndPage;
	}

	public void setnEndPage(Integer nEndPage) {
		this.nEndPage = nEndPage;
	}
	
	
}
