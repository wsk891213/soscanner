package com.finalproject.soscanner.vo;

import java.util.Arrays;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int boardNo;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private int viewCount;
	private String lang;
	private int commCount;
	
	private MultipartFile attFile = null;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public int getCommCount() {
		return commCount;
	}
	public void setCommCount(int commCount) {
		this.commCount = commCount;
	}
//	@Override
//	public String toString() {
//		return "BoardVO [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", writer=" + writer
//				+ ", regDate=" + regDate + ", viewCount=" + viewCount + ", file=" + Arrays.toString(file) + "]";
//	}
	public MultipartFile getAttFile() {
		return attFile;
	}
	public void setAttFile(MultipartFile attFile) {
		this.attFile = attFile;
	}
}
