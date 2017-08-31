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
	@RequestMapping("/helpsend")
	@ResponseBody
	public ResponseEntity<String> helpSend (String userId, String content) {
		logger.info("helpSend");
		
		
		userId ="호민";
		content = "준영이 병신";
		
		final String uri ="https://fcm.googleapis.com/fcm/send";
		RestTemplate restTemplate = new RestTemplate();
		
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		
		String input = "{ 	\"notification\": {	\"title\" : \""+ userId +"\", \"body\": \"" + content + "\",	\"click_action\": \"http://localhost:8000/soscan/main\" }, \"to\": \"cXUCkLY4G38:APA91bEQdxCn2FBXHYCgueZTBNcKmB6-MC6JXA6ltDgSmal7oD6uIyId7nXgo7rGLpiR9_peRXyqlPr5-aE0GLjXVf-29qrIiJcaIe7PRthyfC3uZcjiKeDZpuZKwitCbRrqKyI-7Gx0\" }";
		
		
		System.out.println(input);
		//set headers
		
		logger.info("input : ", input);
		HttpHeaders headers = new HttpHeaders();
		
		headers.add("Authorization", "key=AAAAC1XFO4Y:APA91bG0j44SLYGqa0aaw58EykUr9fz0Vqwv_X3Kn57NkhJg4yhObIj18fsO_NAmFcKUWNNkeZu0sQh-TUy45xspyQRFeA8bD3HaqalrikMgibfgdzMXsBAFNNct_Mak_mdFyXm-aXkf");
		headers.add("Content-Type", "application/json");
		//headers.setContentType(MediaType.APPLICATION_JSON);
		//headers.set("Authorization", "key=AAAAC1XFO4Y:APA91bG0j44SLYGqa0aaw58EykUr9fz0Vqwv_X3Kn57NkhJg4yhObIj18fsO_NAmFcKUWNNkeZu0sQh-TUy45xspyQRFeA8bD3HaqalrikMgibfgdzMXsBAFNNct_Mak_mdFyXm-aXkf");
		
		HttpEntity<String> entity = new HttpEntity<String>(input, headers);
		logger.info("entity : ", entity);
		System.out.println(entity);
		
		
		ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
		System.out.println(response);
		
		logger.info("response : ", response);
		
		return response;
	}
	
}
