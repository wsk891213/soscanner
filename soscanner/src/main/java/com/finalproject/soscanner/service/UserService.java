package com.finalproject.soscanner.service;

import java.util.List;

import com.finalproject.soscanner.vo.UserVO;

public interface UserService {
	
	public List<UserVO> userList () throws Exception;
	
	public List<UserVO> searchUser (String u_language) throws Exception;
	
	public void insertUser (UserVO user) throws Exception;
}
