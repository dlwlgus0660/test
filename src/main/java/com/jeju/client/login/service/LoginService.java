package com.jeju.client.login.service;

import com.jeju.client.login.vo.LoginVO;
import com.jeju.client.member.vo.MemberVO;

public interface LoginService {
	public LoginVO loginSelect(LoginVO lvo) throws Exception;
	public String selectHash(String mem_id);
	public MemberVO userIdfind(MemberVO mvo);
	public int updatePw(MemberVO mvo) throws Exception;
	public MemberVO pwSearch(MemberVO mvo);
}
