package com.finalproject.soscanner.vo;

public class FileVO {
	private String B_SYSNAME;
	private String B_ORINAME;
	private String B_FILEPATH;
	private long B_SIZE;
	private int boardNo;
	
	public String getB_SYSNAME() {
		return B_SYSNAME;
	}
	public void setB_SYSNAME(String b_SYSNAME) {
		B_SYSNAME = b_SYSNAME;
	}
	public String getB_ORINAME() {
		return B_ORINAME;
	}
	public void setB_ORINAME(String b_ORINAME) {
		B_ORINAME = b_ORINAME;
	}
	public String getB_FILEPATH() {
		return B_FILEPATH;
	}
	public void setB_FILEPATH(String b_FILEPATH) {
		B_FILEPATH = b_FILEPATH;
	}
	public long getB_SIZE() {
		return B_SIZE;
	}
	public void setB_SIZE(long b_SIZE) {
		B_SIZE = b_SIZE;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
}
