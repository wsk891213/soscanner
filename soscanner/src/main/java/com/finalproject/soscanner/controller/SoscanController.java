package com.finalproject.soscanner.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.finalproject.soscanner.service.UserService;
import com.finalproject.soscanner.vo.UserVO;


@Controller
@RequestMapping("/soscan")
public class SoscanController {

	private static final Logger logger = LoggerFactory.getLogger(SoscanController.class);
	@Autowired
	private UserService userService;
	
	@RequestMapping("/main")
	public void main () {
		logger.info("메인컨트롤러");
	}
	
	@RequestMapping("/chat")
	public void chat () {
		logger.info("chat 컨트롤러");
	}
	@RequestMapping("/chat2")
	public void chat2 () {
		logger.info("chat2 컨트롤러");
	}
	
	
	@RequestMapping("/helper")
	public void helper (String sosId, Model model) {
		logger.info("helper");
		model.addAttribute("sosId", sosId);
	}
	@RequestMapping("/selecthelp")
	public void selecthelp (String userId, Model model) {
		logger.info("selecthelp");
		model.addAttribute("userId", userId);
	}
	@RequestMapping("/helpsend")
	@ResponseBody
	public ResponseEntity<String> helpSend (String u_language,String userId, String content) throws Exception{
		logger.info("helpSend");
		
		String input= "";
		List<UserVO> user = userService.searchUser(u_language);
		final String uri ="https://fcm.googleapis.com/fcm/send";
		RestTemplate restTemplate = new RestTemplate();
		
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		if (user != null) {
			for (UserVO list : user) {
				input = "{ 	\"notification\": {	\"title\" : \""+ userId +"\", \"body\": \"" + content + "\",	\"click_action\": \"http://192.168.0.18:8000/soscan/selecthelp?userId=" + userId + "\" }, \"to\": \""+list.getU_token()+"\" }";
				
			}
			
			System.out.println(input);
			//set headers
			
			logger.info("input : ", input);
			HttpHeaders headers = new HttpHeaders();
			
			headers.add("Authorization", "key=AAAAC1XFO4Y:APA91bG0j44SLYGqa0aaw58EykUr9fz0Vqwv_X3Kn57NkhJg4yhObIj18fsO_NAmFcKUWNNkeZu0sQh-TUy45xspyQRFeA8bD3HaqalrikMgibfgdzMXsBAFNNct_Mak_mdFyXm-aXkf");
			headers.add("Content-Type", "application/json; charset=utf-8");
			
			HttpEntity<String> entity = new HttpEntity<String>(input, headers);
			logger.info("entity : ", entity);
			System.out.println(entity);
			
			
			ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
			System.out.println(response);
			
			logger.info("response : ", response);
			
			return response;
		}
		return null;
		
	}
	
		
}
