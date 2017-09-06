package com.finalproject.soscanner.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.BoardMapper;
import com.finalproject.soscanner.vo.PageVO;
import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Autowired
	private BoardMapper boardMapper;

	
	@Override
	public int selectBoradPage(PageVO page) throws Exception {
		return boardMapper.selectBoradPage(page);
	}
	
	@Override
	public List<BoardVO> selectBoard(PageVO page) throws Exception {
		
		System.out.println("param===>"+page.toString());
		
		String searchValue = "";
		System.out.println(searchValue);
		
		if(page.getSearchValue() == null) {
			return boardMapper.selectBoard(page);
		}
		if(page.getSearchValue().contains(" ")) {
			String[] sWords = page.getSearchValue().split(" ");
			for(int i = 0; i < sWords.length; i++) {
				if(i != sWords.length - 1) {
					searchValue += sWords[i] + "%";
				}
				else{
					searchValue += sWords[i];
				}
			}
			page.setSearchValue(searchValue);
		}
		String searchT = page.getSearchValue();
		switch(page.getSearchType()) {
		case "sTitle":
			page.setSearchTitle(searchT);
			break;
		case "sContent":
			page.setSearchContent(searchT);
			break;
		case "sId":
			page.setSearchWriter(searchT);;
			break;
		case "sAll":
			page.setSearchTitle(searchT);
			page.setSearchContent(searchT);
			page.setSearchWriter(searchT);
			return boardMapper.selectBoard(page);
		}
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
		return boardMapper.searchList(page);
	}



}
