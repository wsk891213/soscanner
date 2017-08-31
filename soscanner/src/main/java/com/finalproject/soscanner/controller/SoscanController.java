package com.finalproject.soscanner.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
		
		String input = "{ 	\"notification\": {	\"title\" : \""+ userId +"\", \"body\": \"" + content + "\",	\"click_action\": \"http://192.168.0.18:8000/soscan/selecthelp\" }, \"to\": \"cjzHvSiyozE:APA91bFbNLDeAMWPWXi1Fobe1LI-EwQNP0pYCH-un-RSX2435eERKRFPk0oWxzQR-BB16WDaZ8gS7vCrqoIG8Ck5aREtY-pVH75q7Fa1OWQsvSZM5rgc9FOQCLu6-pAo964HxsghOcVe\" }";
		
		
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
