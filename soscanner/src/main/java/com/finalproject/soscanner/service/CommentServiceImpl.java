package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.CommentMapper;
import com.finalproject.soscanner.vo.CommentVO;


@Service("commentService")
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<CommentVO> selectComm(int boardNo) throws Exception {
		return commentMapper.selectComm(boardNo);
	}

	@Override
	public List<CommentVO> insertComm(CommentVO comm) throws Exception {
		commentMapper.insertComm(comm);
		return commentMapper.selectComm(comm.getBoardNo());
	}

	@Override
	public List<CommentVO> deleteComm(CommentVO comm) throws Exception {
		commentMapper.deleteComm(comm.getCommentNo());
		return commentMapper.selectComm(comm.getBoardNo());
	}

	@Override
	public List<CommentVO> updateComm(CommentVO comm) throws Exception {
		commentMapper.updateComm(comm);
		return commentMapper.selectComm(comm.getBoardNo());
	}

}
