package com.finalproject.soscanner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.finalproject.soscanner.vo.UserVO;

@Controller
@RequestMapping("/login")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping("/signup")
	@ResponseBody
	public void singUp(UserVO user) {
		logger.info("singUp 컨트롤러");
	}
	
	
	@RequestMapping("/singin")
	@ResponseBody
	public void singIn(UserVO user) {
		
	}
	
}