package com.finalproject.soscanner.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import javax.swing.plaf.synth.SynthSeparatorUI;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.finalproject.soscanner.service.BoardService;
import com.finalproject.soscanner.service.CommentService;
import com.finalproject.soscanner.vo.BoardVO;
import com.finalproject.soscanner.vo.CommentVO;
import com.finalproject.soscanner.vo.PageResultVO;
import com.finalproject.soscanner.vo.PageVO;


@Controller
@RequestMapping("board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("**/favicon.ico")
	public String favicon() {
		return "forward:/resources/img/fav.ico";
	}

	// 게시판
	@RequestMapping("/list")
	public void boardList(Model model, PageVO page) throws Exception {
		System.out.println("page ============>"+page);
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

	@RequestMapping(value="/write", method=RequestMethod.POST)
	public void writer(BoardVO boardVO, MultipartHttpServletRequest mRequest) throws Exception {
		System.out.println("boardVo title ======>" + boardVO.getTitle());
		System.out.println("boardVo content ======>" + boardVO.getContent());
		System.out.println("boardVo writer ======>" + boardVO.getWriter());
		System.out.println("boardVo file ======>" + boardVO.getAttFile().getOriginalFilename());
		
		boardService.insertBoard(boardVO, mRequest);
	}
		
//		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest)request;
//		BoardVO board = new BoardVO();
//		board.setTitle(mRequest.getParameter("title"));
//		board.setWriter(mRequest.getParameter("writer"));
//		board.setContent(mRequest.getParameter("content"));
//		boardService.insertBoard(board, mRequest);
	
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
	
	// 댓글 처리
		@RequestMapping("/commentList.do")
		@ResponseBody
		public List<CommentVO> commentListAjax(int boardNo) throws Exception {
			
			return commentService.selectComm(boardNo);
		}
		
		@RequestMapping("/commentRegist.do")
		@ResponseBody
		public List<CommentVO> commentRegistAjax(CommentVO comm) throws Exception {
			System.out.println("boardNo : " + comm.getBoardNo());
			return commentService.insertComm(comm);
		}
		
		@RequestMapping("/commentUpdate.do")
		@ResponseBody
		public List<CommentVO> commentUpdateAjax(CommentVO comm) throws Exception {
			
			return commentService.updateComm(comm);
		}
		
		@RequestMapping("/commentDelete.do")
		@ResponseBody
		public List<CommentVO> commentDeleteAjax(CommentVO comm) throws Exception {
			
			return commentService.deleteComm(comm);
		}
	
	// FAQ 
	@RequestMapping("/faq")
	public void list(Model model, PageVO page) throws Exception {
		int pageNo = page.getPageNo();
		int count = boardService.selectPage(page);
//		logger.info(searchValue);
		
//		if (searchValue == null) {
//			model.addAttribute("faq", boardService.selectFaq(page));
//		}
//		else {
//			model.addAttribute("faq", boardService.searchList(page));
//		}
		model.addAttribute(page);
		model.addAttribute("pageResult", new PageResultVO(pageNo, count));
		model.addAttribute("faq", boardService.selectFaq(page));
	}
}
