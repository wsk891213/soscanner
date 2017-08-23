package com.finalproject.soscanner.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/soscan")
public class SoscanController {

	private static final Logger logger = LoggerFactory.getLogger(SoscanController.class);
	
	
	@RequestMapping("/main")
	public void main () {
		logger.info("메인컨트롤러");
	}
	
	@RequestMapping("/chat")
	public void chat () {
		logger.info("chat 컨트롤러");
	}
	
	@RequestMapping("/token")
	public void token () {
		logger.info("token 컨트롤러 ");
	}
	
	@RequestMapping("/message")
	public void message () {
		logger.info("message");
	}
	
}
