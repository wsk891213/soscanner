package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.CommentVO;

public interface CommentService {
	public List<CommentVO> selectComm(int boardNo) throws Exception;
	public List<CommentVO> insertComm(CommentVO comm) throws Exception;
	public List<CommentVO> deleteComm(CommentVO comm) throws Exception;
	public List<CommentVO> updateComm(CommentVO comm) throws Exception;
	
}
