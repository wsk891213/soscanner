package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.CommentVO;

public interface CommentService {
	public List<CommentVO> selectComm(int boardNo) throws Exception;
	public void insertComm() throws Exception;
	public void deleteComm() throws Exception;
	public List<CommentVO> updateComm() throws Exception;
	
	public int selectCount(int boardNo) throws Exception;
}
