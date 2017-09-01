package com.finalproject.soscanner.controller;

import java.io.BufferedReader;
import java.io.FileReader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ServiceWokerController {
	private Logger logger = LoggerFactory.getLogger(ServiceWokerController.class);
	
	@RequestMapping("/firebase-messaging-sw.js")
	@ResponseBody
	public String serviceWoker() throws Exception {
		logger.info("서비스워커");
		String path="C:\\Users\\bit\\Desktop\\soscanner\\soscanner\\src\\main\\webapp\\resources\\firebase-messaging-sw.js";
		StringBuilder sb = new StringBuilder();
		String strLine;
		
		BufferedReader br = new BufferedReader(new FileReader(path));
		while((strLine = br.readLine())!= null) {
			sb.append(strLine);
		}
		br.close();
		
		return sb.toString();
//		return "firebase-messaging-sw.js";
	}
}
