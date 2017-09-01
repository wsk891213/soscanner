package com.finalproject.soscanner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
//			userService.insertUser(user);
			answer =  "2";
		}
		return answer;
		
	}
	
	
	@RequestMapping("/singin")
	public void singIn(UserVO user) {
		
	}
	@RequestMapping("/login")
	public void login(UserVO user) {
		
	}
	
}
