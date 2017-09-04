package com.finalproject.soscanner.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.soscanner.service.UserService;
import com.finalproject.soscanner.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/signup", produces = "application/text; charset=utf8")
	@ResponseBody
	public String singUp(UserVO user) throws Exception{
		String answer = "1";
		logger.info("singUp 컨트롤러");
		
		logger.info("email : " + user.getU_email());
		logger.info("pass : " + user.getU_pass());
		logger.info("token : " + user.getU_token());
		if(user.getU_pass().equals(user.getU_passChk())) {
			userService.insertUser(user);
			answer =  "2";
		}
		return answer;
		
	}
	
	
	@RequestMapping("/login")
	@ResponseBody
	public String login(UserVO user, HttpServletRequest req) throws Exception {
		System.out.println(user.getU_email());
		System.out.println(user.getU_pass());
		
		UserVO login = userService.loginChk(user);
		logger.info("로그인");
		System.out.println("로그인");
		System.out.println(login);
		String msg = null;
		HttpSession session = req.getSession();
		if (login != null) {
			session.setAttribute("user", login);
			
			System.out.println("로그인 완료");
			msg = "로그인 되셨습니다.";
		}
		else {
			System.out.println("로그인 실패");
			logger.info("로그인 실패");
			msg = "아이디와 비밀번호를 확인해 주세요";
		}
		return msg;
	}
	
	@RequestMapping("/logout")
	public void singIn(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
	}
}
