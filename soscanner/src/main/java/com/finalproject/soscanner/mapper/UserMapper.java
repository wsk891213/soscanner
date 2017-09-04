package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.UserVO;

public interface UserMapper {
	public List<UserVO> userList () throws Exception;
	
	public List<UserVO> searchUser (String u_language) throws Exception;
	
	public void insertUser (UserVO user) throws Exception;
	
	public UserVO loginChk (UserVO user) throws Exception;
}
