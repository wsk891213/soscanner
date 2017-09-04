package com.finalproject.soscanner.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.soscanner.mapper.UserMapper;
import com.finalproject.soscanner.vo.UserVO;

@Service("UserService")
public class UserServiceImpl implements UserService{

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
	public void insertUser(UserVO user) throws Exception {
		userMapper.insertUser(user);
	}

	@Override
	public UserVO loginChk(UserVO user) throws Exception {
		return userMapper.loginChk(user);
	}
	
}
