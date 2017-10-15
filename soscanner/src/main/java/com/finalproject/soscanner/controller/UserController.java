package com.finalproject.soscanner.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
//		String oriName = "noimages.png";
//		int index = oriName.lastIndexOf(".");
//		String ext = oriName.substring(index);
//		UserPicVO pic = new UserPicVO();
//		String systemName = "hm" + UUID.randomUUID().toString() + ext;

//		pic.setU_path("C:\\Users\\bit\\Desktop\\soscanner\\soscanner\\src\\main\\webapp\\resources\\images\\noimages.png");
//		pic.setU_sysName(systemName);
//		pic.setU_uNo(user.getU_uno());
//		System.out.println(pic.toString());	
		
		String returnWord = "";
		UserVO Ucheck = userService.oneUser(user.getU_email());
		
		if(Ucheck != null) {
			if(Ucheck.getU_email().equals(user.getU_email())) {
				returnWord =  "1";
			}
		}
		else {
			userService.insertUser(user);
			returnWord =  "2";
		}
		
		return returnWord;
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
			UserPicVO pic = userService.selectUserPic(login.getU_uno());
			session.setAttribute("user", login);
			session.setAttribute("userPic", pic);
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
	public Map<String, Object> userPic (String id) throws Exception {
		System.out.println(id);
		Map<String, Object> map = new HashMap<String, Object>();
		UserVO user = userService.oneUser(id);
		map.put("user", user);
		System.out.println(user.toString());
		map.put("userPic", userService.selectUserPic(user.getU_uno()));
		return map;
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
	public void updateForm (MultipartHttpServletRequest multi, UserVO user, HttpSession session) throws Exception {
		logger.info("업데이트 폼 들어옴");
		userService.userUpdate(user);
		session.removeAttribute("userPic");
		UserPicVO pic = new UserPicVO();
		String root = multi.getSession().getServletContext().getRealPath("/");
		logger.info("root : "+ root);
		MultipartFile mFile = multi.getFile("image");
	    String path =root+"resources/images/upload";
	    logger.info("path : " + path);
	    String oriName = mFile.getOriginalFilename();
	    String ext = "";
	    int index = oriName.lastIndexOf(".");
	    if(index != -1) {
	    	ext = oriName.substring(index);
	    	
	    }
	    String sysName = "hm" + UUID.randomUUID().toString()+ext;
	    String realPath = "/resources/images/upload/"+sysName;
	    String pathUp = path + "/" + sysName;
		
	    mFile.transferTo(new File(pathUp));
         
	    pic.setU_sysName(sysName);
	    pic.setU_path(realPath);
	    pic.setU_uno(user.getU_uno());
	    session.setAttribute("userPic", pic);
	    userService.userUpdatePic(pic);
    }


	
	
	

}
