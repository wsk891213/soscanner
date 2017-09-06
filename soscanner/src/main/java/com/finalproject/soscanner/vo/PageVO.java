package com.finalproject.soscanner.vo;

public class PageVO {
	private int pageNo = 1;
	private int pageCount = 10;
	
	private String searchType;
	private String searchWriter = "";
	private String searchTitle = "";
	private String searchText = "";
	private String searchContent = "";
	private String searchValue;
	
	@Override
	public String toString() {
		return "PageVO [pageNo=" + pageNo + ", pageCount=" + pageCount + ", searchType=" + searchType
				+ ", searchWriter=" + searchWriter + ", searchTitle=" + searchTitle + ", searchContent=" + searchContent
				+ ", searchValue=" + searchValue + "]";
	}

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

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchWriter() {
		return searchWriter;
	}

	public void setSearchWriter(String searchWriter) {
		this.searchWriter = searchWriter;
	}

	public String getSearchTitle() {
		return searchTitle;
	}

	public void setSearchTitle(String searchTitle) {
		this.searchTitle = searchTitle;
	}

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

}
