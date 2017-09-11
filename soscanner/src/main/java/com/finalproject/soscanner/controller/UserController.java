package com.finalproject.soscanner.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.finalproject.soscanner.service.UserService;
import com.finalproject.soscanner.vo.UserPicVO;
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
//		String oriName = "noimages.png";
//		int index = oriName.lastIndexOf(".");
//		String ext = oriName.substring(index);
//		UserPicVO pic = new UserPicVO();
//		String systemName = "hm" + UUID.randomUUID().toString() + ext;

//		pic.setU_path("C:\\Users\\bit\\Desktop\\soscanner\\soscanner\\src\\main\\webapp\\resources\\images\\noimages.png");
//		pic.setU_sysName(systemName);
//		pic.setU_uNo(user.getU_uno());
		System.out.println(user.toString());
//		System.out.println(pic.toString());	
		
//		logger.info("email : " + user.getU_email());
//		logger.info("pass : " + user.getU_pass());
//		logger.info("token : " + user.getU_token());
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
	@RequestMapping("/user")
	@ResponseBody
	public UserVO userPic (String id) throws Exception {
		System.out.println(id);
		
		UserVO user = userService.oneUser(id);
		System.out.println(user.toString());
		return user;
	}
	@RequestMapping("/userPic")
	@ResponseBody
	public UserPicVO Pic (int u_uNo) throws Exception {
		System.out.println(u_uNo);
		UserPicVO pic = userService.selectUserPic(u_uNo);
		System.out.println(pic.toString());
		return pic;
	}
	
	@RequestMapping("/updateuser")
	public void userUpdate () throws Exception {
		
	}
	
	@RequestMapping("/updateForm")
	@ResponseBody
	public void updateForm (UserVO user, String path) throws Exception {
		System.out.println("user : "+user.toString());
		System.out.println("path : "+path);
	}
	
	
	

}
