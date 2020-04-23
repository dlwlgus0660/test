package com.jeju.admin.member.list.service;

import java.util.List;

import com.jeju.admin.member.list.vo.AdminMemberListVO;

public interface AdminMemberListService {

	// 회원 전체 조회
	public List<AdminMemberListVO> memList() throws Exception;

	// 회원 상세 조회
	public AdminMemberListVO memDetail(String mem_id) throws Exception;
	
	// 상태 수정
	public int memUpdate(AdminMemberListVO vo);

}
