package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.CommentVO;

public interface CommentMapper {

	public List<CommentVO> selectComm(int boardNo) throws Exception;
	public void insertComm() throws Exception;
	public void deleteComm() throws Exception;
	public List<CommentVO> updateComm() throws Exception;
	
	public int selectCount(int boardNo) throws Exception;
}
