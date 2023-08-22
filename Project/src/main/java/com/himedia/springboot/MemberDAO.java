package com.himedia.springboot;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	void signUp(String userid, String passcode, String name,String mobile, String gender, String birthday);
	
	int doLogin(String id, String pw);
	
	MemberDTO loginSuccess(String id);
	
	int idCheck(String id);
}
