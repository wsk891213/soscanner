package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.BoardMapper;
import com.finalproject.soscanner.vo.PageVO;
import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;

	
	@Override
	public int selectBoradPage(PageVO page) throws Exception {
		return boardMapper.selectBoradPage(page);
	}

	@Override
	public List<BoardVO> selectBoard(PageVO page) throws Exception {
		return boardMapper.selectBoard(page);
	}

	@Override
	public BoardVO detailBoard(int boardNo) throws Exception {
		return boardMapper.detailBoard(boardNo);
	}

	@Override
	public String deleteBoard(int boardNo) throws Exception {
		int result = boardMapper.deleteBoard(boardNo);
		if (result == 0) {
			return "fail";
		}
		else {
			return "/board/list";
		}
	}

	@Override
	public String insertBoard(BoardVO boardVO) throws Exception {
		int result = boardMapper.insertBoard(boardVO);
		if (result == 0) {
			return "fail";
		}
		else {
			return "/board/list";
		}
	}

	@Override
	public String updateBoard(BoardVO boardVO) throws Exception {
		int result = boardMapper.updateBoard(boardVO);
		if (result == 0) {
			return "fail";
		}
		else {
			return "/board/detail";
		}
	}

	@Override
	public BoardVO updateFormBoard(int boardNo) throws Exception {
		return boardMapper.detailBoard(boardNo);
	}
	
	
	
	// FAQ
	@Override
	public List<FaqVO> selectFaq(PageVO page) throws Exception {
		return boardMapper.selectFaq(page);
	}

	@Override
	public int selectPage(PageVO page) throws Exception {
		return boardMapper.selectPage(page);
	}

	@Override
	public List<FaqVO> searchList(PageVO page) throws Exception {
		System.out.println(page.getSearchValue());
		return boardMapper.searchList(page);
	}

}
