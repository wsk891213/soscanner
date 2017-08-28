package com.finalproject.soscanner.controller;

//import javax.swing.plaf.synth.SynthSeparatorUI;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.soscanner.service.BoardService;
import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.PageResultVO;
import com.finalproject.soscanner.vo.PageVO;

@Controller
@RequestMapping("board")
public class BoardController {
	
//	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("**/favicon.ico")
	public String favicon() {
		return "forward:/resources/img/fav.ico";
	}

	// 게시판
	@RequestMapping("/list")
	public void boardList(Model model, PageVO page) throws Exception {
		int pageNo = page.getPageNo();
		int count = boardService.selectBoradPage(page);
		model.addAttribute("page", count);
		model.addAttribute("list", boardService.selectBoard(page));
		model.addAttribute("pageResult", new PageResultVO(pageNo, count));
	}
	
	@RequestMapping("/detail")
	public void detail(Model model, int boardNo) throws Exception {
		model.addAttribute("detail", boardService.detailBoard(boardNo));
	}
	
	@RequestMapping("/delete")
	public void delete(int boardNo) throws Exception {
		boardService.deleteBoard(boardNo);
	}

	@RequestMapping("/write")
	public void write(BoardVO boardVO) throws Exception {
		boardService.insertBoard(boardVO);
	}
	@RequestMapping("/writeForm")
	public void writeForm() throws Exception {
	}

	@RequestMapping("/update")
	public void update(BoardVO boardVO,@ModelAttribute("boardNo") int boardNo, Model model) throws Exception {
		boardService.updateBoard(boardVO);
		model.addAttribute(boardNo);
	}
	@RequestMapping("/updateForm")
	public void update(Model model, int boardNo) throws Exception {
		model.addAttribute("updateForm", boardService.detailBoard(boardNo));
	}
	
	
	// FAQ 
	@RequestMapping("/faq")
	public void list(Model model, PageVO page) throws Exception {
		String searchValue = page.getSearchValue();
		int pageNo = page.getPageNo();
		int count = boardService.selectPage(page);
//		logger.info(searchValue);
		
		if (searchValue == null) {
			model.addAttribute("faq", boardService.selectFaq(page));
		}
		else {
			model.addAttribute("faq", boardService.searchList(page));
		}
		model.addAttribute("page", count);
		model.addAttribute("pageResult", new PageResultVO(pageNo, count));
	}
}
