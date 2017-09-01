package com.finalproject.soscanner.controller;


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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.finalproject.soscanner.service.UserService;


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
	
	@RequestMapping("/token")
	public void token () {
		logger.info("token 컨트롤러 ");
	}
	
	@RequestMapping("/message")
	public void message () {
		logger.info("message");
	}
	@RequestMapping("/helper")
	public void helper () {
		logger.info("helper");
	}
	@RequestMapping("/selecthelp")
	public void selecthelp () {
		logger.info("selecthelp");
	}
	@RequestMapping("/helpsend")
	@ResponseBody
	public ResponseEntity<String> helpSend (String userId, String content) {
		logger.info("helpSend");
		
		
		
		final String uri ="https://fcm.googleapis.com/fcm/send";
		RestTemplate restTemplate = new RestTemplate();
		
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		
		String input = "{ 	\"notification\": {	\"title\" : \""+ userId +"\", \"body\": \"" + content + "\",	\"click_action\": \"http://192.168.0.18:8000/soscan/selecthelp\" }, \"registration_ids\": [\"fY0ySamuyto:APA91bFGA8JPq_vYO2ajmN5aNa3WkvUcjiUY0U6JsvsNTNLkuVSrmagWH7F3SqefQ4F24HizaR3Xx1rEwTUg-13Vo4EJd8RIAmZbNcYQjKsKsZyJ_bGOO0Iid7lIAfV7giGFZk9HEyfn\", \"cXUCkLY4G38:APA91bEQdxCn2FBXHYCgueZTBNcKmB6-MC6JXA6ltDgSmal7oD6uIyId7nXgo7rGLpiR9_peRXyqlPr5-aE0GLjXVf-29qrIiJcaIe7PRthyfC3uZcjiKeDZpuZKwitCbRrqKyI-7Gx0\"] }";
		
		
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
	
		
}
