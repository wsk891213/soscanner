package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.CommentVO;

public interface CommentMapper {
	public List<CommentVO> selectComm(int boardNo) throws Exception;
	public void insertComm(CommentVO comm) throws Exception;
	public void deleteComm(int boardNo) throws Exception;
	public void updateComm(CommentVO comm) throws Exception;
	
	public int selectCount(int boardNo) throws Exception;
}
