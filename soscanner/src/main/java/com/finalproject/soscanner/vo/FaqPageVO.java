package com.finalproject.soscanner.vo;

public class FaqPageVO {
	private int pageNo = 1;
	private int pageCount = 10;
	

	public int getCount() {
		return pageCount;
	}
	
	public int getBegin() {
		return (pageNo - 1) * 10 + 1;
	}
	
	public int getEnd() {
		return pageNo * 10;
	}
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageCount() {
		return pageNo * pageCount;
	}
	
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
}
