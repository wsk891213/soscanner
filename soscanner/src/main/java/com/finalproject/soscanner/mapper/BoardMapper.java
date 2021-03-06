package com.finalproject.soscanner.mapper;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;
import com.finalproject.soscanner.vo.FileVO;
import com.finalproject.soscanner.vo.PageVO;

public interface BoardMapper {
	
	// 게시판 Mapper
	public List<BoardVO> selectBoard(PageVO page) throws Exception;
	public List<BoardVO> selectBoard2(PageVO page) throws Exception;
	public BoardVO detailBoard(int boardNo) throws Exception;
	public int deleteBoard(int boardNo) throws Exception;
	public int insertBoard(BoardVO boardVO) throws Exception;
	public int updateBoard(BoardVO boardVO) throws Exception;
	public BoardVO updateFormBoard(int boardNo) throws Exception;
	
	// 댓글
	public int selectCommCount(int boardNo) throws Exception;
	
	// 파일업로드
	public void insertFile(FileVO file) throws Exception;
	
	// 페이징
	public int selectBoradPage(PageVO page) throws Exception;
	
	// FAQ 
	public List<FaqVO> selectFaq(PageVO page) throws Exception;
	
	// FAQ 검색
	public List<FaqVO> searchList(PageVO searchValue) throws Exception;
	
	// 페이징
	public int selectPage(PageVO page) throws Exception;
}
