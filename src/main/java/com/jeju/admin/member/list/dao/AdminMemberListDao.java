package com.jeju.admin.member.list.dao;

import java.util.List;

import com.jeju.admin.member.list.vo.AdminMemberListVO;

public interface AdminMemberListDao {

	// 회원 리스트 전체 조회
	public List<AdminMemberListVO> memList() throws Exception;

	// 회원 리스트 상세 보기
	public AdminMemberListVO memDetail(String mem_id) throws Exception;

	// 상태 수정
	public int memUpdate(AdminMemberListVO vo);

}
