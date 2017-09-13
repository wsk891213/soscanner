package com.finalproject.soscanner.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.finalproject.soscanner.mapper.BoardMapper;
import com.finalproject.soscanner.util.FileUtils;
import com.finalproject.soscanner.vo.PageVO;

import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.FaqVO;
import com.finalproject.soscanner.vo.FileVO;

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
	public void insertBoard(BoardVO boardVO, MultipartHttpServletRequest mRequest) throws Exception {
		boardMapper.insertBoard(boardVO);
		
		String filePath = "D:/soscanner/soscanner/src/main/webapp/WEB-INF/file";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd");
		String datePath = sdf.format(new Date());
		
		filePath += datePath;
		File f = new File(filePath);
		if (!f.exists()) {
			f.mkdirs();
		}
		
		Iterator<String> iter = mRequest.getFileNames();
		while(iter.hasNext()) {
			String formFileName = iter.next();
			MultipartFile mFile = mRequest.getFile(formFileName);
			String oriName = mFile.getOriginalFilename();
			if(oriName != null && !oriName.equals("")) {
			
				String ext = "";
				int index = oriName.lastIndexOf(".");
				if (index != -1) {
					ext = oriName.substring(index);
				}
				long size = mFile.getSize();
				String sysName = "mlec-" + UUID.randomUUID().toString() + ext;
				
				
				
				System.out.println(filePath);
				System.out.println(sysName);
				mFile.transferTo(new File(filePath + "\\" + sysName));
				
				FileVO fileSave = new FileVO();
				fileSave.setB_FILEPATH(datePath);
				fileSave.setB_ORINAME(oriName);
				fileSave.setB_SYSNAME(sysName);
				fileSave.setB_SIZE(size);
				
				boardMapper.insertFile(fileSave);
			} 
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
	
	
	// 댓글
	@Override
	public int selectCommCount(int boardNo) throws Exception {
		return boardMapper.selectCommCount(boardNo);
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
