package com.finalproject.soscanner.vo;

import java.util.Date;

public class CommentVO {
	private int commentNo;
	private int commentBoard;
	private String commentID;
	private Date commentDate;
	private int commentParent;
	private String commentContent;
	private int commentCount;
	
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getCommentBoard() {
		return commentBoard;
	}
	public void setCommentBoard(int commentBoard) {
		this.commentBoard = commentBoard;
	}
	public String getCommentID() {
		return commentID;
	}
	public void setCommentID(String commentID) {
		this.commentID = commentID;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public int getCommentParent() {
		return commentParent;
	}
	public void setCommentParent(int commentParent) {
		this.commentParent = commentParent;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	
}
