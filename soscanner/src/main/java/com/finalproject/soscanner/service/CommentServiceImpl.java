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
	public void insertComm() throws Exception {
	}

	@Override
	public void deleteComm() throws Exception {
	}

	@Override
	public List<CommentVO> updateComm() throws Exception {
		return null;
	}

	@Override
	public int selectCount(int boardNo) throws Exception {
		return commentMapper.selectCount(boardNo);
	}

}
