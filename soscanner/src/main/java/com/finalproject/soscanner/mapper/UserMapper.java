package com.finalproject.soscanner.mapper;

import java.util.List;

import com.finalproject.soscanner.vo.UserPicVO;
import com.finalproject.soscanner.vo.UserVO;

public interface UserMapper {
	public List<UserVO> userList () throws Exception;
	
	public List<UserVO> searchUser (UserVO user) throws Exception;
	
	public void insertUser (UserVO user) throws Exception;
	
	public UserVO loginChk (UserVO user) throws Exception;
	
	public void userPicInsert (UserPicVO picVO) throws Exception;
	
	public UserVO oneUser (String id) throws Exception;
	
	public UserPicVO selectUserPic (int u_uNo) throws Exception;
	
	public void userUpdate (UserVO user) throws Exception;
	
	public int userUpdatePic (UserPicVO pic) throws Exception;
	
}
