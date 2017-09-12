package com.finalproject.soscanner.controller;


import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.finalproject.soscanner.service.UserService;
import com.finalproject.soscanner.vo.UserPicVO;
import com.finalproject.soscanner.vo.UserVO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/soscan")
public class SoscanController {

	private static final Logger logger = LoggerFactory.getLogger(SoscanController.class);
	@Autowired
	private UserService userService;

	@RequestMapping("/main")
	public void main() {
		logger.info("메인컨트롤러");
	}

	@RequestMapping("/chat")
	public void chat(String opponent, Model model) throws Exception {
		System.out.println("opponent : " + opponent);
		UserVO user = userService.oneUser(opponent);
		model.addAttribute("nextUser",user);
		model.addAttribute("nextUserPic", userService.selectUserPic(user.getU_uno()));
	}

	@RequestMapping("/chat2")
	public void chat2() {
		logger.info("chat2 컨트롤러");
	}

	@RequestMapping("/helper")
	public void helper(String sId, String hId, Model model) {
		logger.info("helper");
		System.out.println("sid: " + sId);
		System.out.println("hid: " + hId);
		model.addAttribute("sId", sId);
		model.addAttribute("hId", hId);
	}

	@RequestMapping("/selecthelp")
	public void selecthelp(String sosId, Model model) {
		logger.info("selecthelp");
		model.addAttribute("sosId", sosId);
	}

	@RequestMapping(value="/helpsend")
	@ResponseBody
	public void helpSend(UserVO user, String content) throws Exception {
		logger.info("helpSend");

		List<UserVO> listUser = userService.searchUser(user);
		
		ArrayList<String> arr = new ArrayList<>();
		
		for (UserVO list : listUser) {
			arr.add("\""+list.getU_token()+"\"");
		}
		
		
		
		if (listUser != null) {
					final String uri = "https://fcm.googleapis.com/fcm/send";
					RestTemplate restTemplate = new RestTemplate();
					restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
					String input = "{ 	\"notification\": {	\"title\" : \"" + user.getU_email() + "\", \"body\": \""
							+ content
							+ "\",	\"click_action\": \"https://bit94.kro.kr/soscan/selecthelp?sosId="+user.getU_email()+"\" }, \"registration_ids\":" + arr +"}";
					logger.info("input : ", input);
					HttpHeaders headers = new HttpHeaders();

					headers.add("Authorization",
							"key=AAAAC1XFO4Y:APA91bG0j44SLYGqa0aaw58EykUr9fz0Vqwv_X3Kn57NkhJg4yhObIj18fsO_NAmFcKUWNNkeZu0sQh-TUy45xspyQRFeA8bD3HaqalrikMgibfgdzMXsBAFNNct_Mak_mdFyXm-aXkf");
					headers.add("Content-Type", "application/json; charset=utf-8");

					HttpEntity<String> entity = new HttpEntity<String>(input, headers);
					System.out.println("entity : " + entity);

					ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
					System.out.println("response : " + response);
//					return response;
			}
//		return null;

	}

}
