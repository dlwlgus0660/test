package com.jeju.client.login.dao;

import com.jeju.client.login.vo.LoginVO;
import com.jeju.client.member.vo.MemberVO;

public interface LoginDao {

	public LoginVO loginSelect(LoginVO lvo);
	public String selectHash(String mem_id);
	public MemberVO idSelect(MemberVO mvo);
	public int updatePw(MemberVO mvo)throws Exception;
	public MemberVO pwSelect(MemberVO mvo);
}