package com.finalproject.soscanner.service;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finalproject.soscanner.mapper.UserMapper;
import com.finalproject.soscanner.vo.UserPicVO;
import com.finalproject.soscanner.vo.UserVO;

@Service("UserService")
public class UserServiceImpl implements UserService{
	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<UserVO> userList() throws Exception {
		return userMapper.userList();
	}

	@Override
	public List<UserVO> searchUser(UserVO user) throws Exception {
		return userMapper.searchUser(user);
	}

	@Override
	@Transactional
	public void insertUser(UserVO user) throws Exception {
		System.out.println("service" + user.toString());
		logger.info("insertUser 들어옴");
		userPicInsert(user);
		userMapper.insertUser(user);
	}

	@Override
	public UserVO loginChk(UserVO user) throws Exception {
		return userMapper.loginChk(user);
	}

	@Override
	public void userPicInsert(UserVO user) throws Exception {
		logger.info("userPicInsert 들어옴");
		
		UserPicVO pic = new UserPicVO();
		String oriName = "noimages.png";
		int index = oriName.lastIndexOf(".");
		String ext = oriName.substring(index);
		String systemName = "hm" + UUID.randomUUID().toString() + ext;
		pic.setU_path("C:\\Users\\bit\\Desktop\\soscanner\\soscanner\\src\\main\\webapp\\resources\\images\\noimages.png");
		pic.setU_sysName(systemName);
		pic.setU_uNo(user.getU_uno());
		System.out.println("service" + pic.toString());
		userMapper.userPicInsert(pic);
	}

	@Override
	public UserVO oneUser(String id) throws Exception {
		
		return userMapper.oneUser(id);
	}

	@Override
	public UserPicVO selectUserPic(int u_uNo) throws Exception {

		return userMapper.selectUserPic(u_uNo);
	}


	
}
