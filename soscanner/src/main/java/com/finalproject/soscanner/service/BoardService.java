package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.PageVO;
import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;

public interface BoardService {
	
	public List<BoardVO> selectBoard(PageVO page) throws Exception;
	public BoardVO detailBoard(int boardNo) throws Exception;
	public String deleteBoard(int boardNo) throws Exception;
	public String insertBoard(BoardVO boardVO) throws Exception;
	public String updateBoard(BoardVO boardVO) throws Exception;
	public BoardVO updateFormBoard(int boardNo) throws Exception;
	// 페이징
	public int selectBoradPage(PageVO page) throws Exception;
	
	public List<FaqVO> selectFaq(PageVO page) throws Exception;
	
	// FAQ
	public List<FaqVO> searchList(PageVO searchValue) throws Exception;
	
	// 페이징
	public int selectPage(PageVO page) throws Exception;
}
