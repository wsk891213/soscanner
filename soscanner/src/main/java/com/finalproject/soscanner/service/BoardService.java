package com.finalproject.soscanner.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;
import com.finalproject.soscanner.vo.PageVO;

public interface BoardService {
	
	public List<BoardVO> selectBoard(PageVO page) throws Exception;
	public BoardVO detailBoard(int boardNo) throws Exception;
	public String deleteBoard(int boardNo) throws Exception;
	public void insertBoard(BoardVO boardVO, MultipartHttpServletRequest mRequest) throws Exception;
	public String updateBoard(BoardVO boardVO) throws Exception;
	public BoardVO updateFormBoard(int boardNo) throws Exception;
	
	// 댓글 갯수
	public int selectCommCount(int boardNo) throws Exception;
	
	// 페이징
	public int selectBoradPage(PageVO page) throws Exception;
	
	// FAQ
	public List<FaqVO> selectFaq(PageVO page) throws Exception;

	// FAQ 검색
	public List<FaqVO> searchList(PageVO searchValue) throws Exception;
	
	// 페이징
	public int selectPage(PageVO page) throws Exception;
}
